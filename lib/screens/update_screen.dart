import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../widgets/entrance.dart';
import '../widgets/ui_kit.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key, this.currentVersion = '1.0.0'});

  final String currentVersion;

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

enum _UpdateStatus { checking, upToDate, updateAvailable, downloading, downloaded, error }

class _UpdateScreenState extends State<UpdateScreen> {
  _UpdateStatus _status = _UpdateStatus.checking;
  String _errorMessage = '';

  String _latestVersion = '';
  String _releaseTitle = '';
  String _releaseNotes = '';
  String? _apkDownloadUrl;
  String? _downloadedFilePath;

  int _totalBytes = 0;
  int _downloadedBytes = 0;
  double _downloadSpeedMbps = 0.0;
  StreamSubscription<List<int>>? _downloadSubscription;
  HttpClientRequest? _activeRequest;

  @override
  void initState() {
    super.initState();
    _checkForUpdate();
  }

  @override
  void dispose() {
    _downloadSubscription?.cancel();
    _activeRequest?.abort();
    super.dispose();
  }

  Future<void> _checkForUpdate() async {
    setState(() {
      _status = _UpdateStatus.checking;
      _errorMessage = '';
    });

    try {
      final client = HttpClient();
      client.connectionTimeout = const Duration(seconds: 10);
      final request = await client.getUrl(
        Uri.parse('https://api.github.com/repos/smartworldarafath/Open-GYM/releases/latest'),
      );
      request.headers.set('User-Agent', 'Open-GYM-App');
      final response = await request.close();

      if (response.statusCode == 200) {
        final body = await response.transform(utf8.decoder).join();
        final json = jsonDecode(body) as Map<String, dynamic>;

        final tagName = (json['tag_name'] as String? ?? '').replaceAll('v', '').trim();
        final title = json['name'] as String? ?? 'Open-GYM $tagName';
        final notes = json['body'] as String? ?? '';
        final assets = (json['assets'] as List<dynamic>?) ?? [];

        String? apkUrl;
        for (final asset in assets) {
          final name = (asset['name'] as String? ?? '').toLowerCase();
          final downloadUrl = asset['browser_download_url'] as String?;
          if (name.endsWith('.apk') && downloadUrl != null) {
            // Prefer arm64-v8a or generic apk
            if (name.contains('arm64') || apkUrl == null) {
              apkUrl = downloadUrl;
            }
          }
        }

        final isNewer = _isVersionNewer(tagName, widget.currentVersion);

        setState(() {
          _latestVersion = tagName.isNotEmpty ? tagName : widget.currentVersion;
          _releaseTitle = title;
          _releaseNotes = notes;
          _apkDownloadUrl = apkUrl;
          _status = isNewer ? _UpdateStatus.updateAvailable : _UpdateStatus.upToDate;
        });
      } else {
        setState(() {
          _status = _UpdateStatus.error;
          _errorMessage = 'Server returned status code: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _status = _UpdateStatus.error;
        _errorMessage = e.toString();
      });
    }
  }

  bool _isVersionNewer(String latest, String current) {
    if (latest.isEmpty) return false;
    final latestParts = latest.split('.').map((p) => int.tryParse(p) ?? 0).toList();
    final currentParts = current.split('.').map((p) => int.tryParse(p) ?? 0).toList();

    for (int i = 0; i < 3; i++) {
      final l = i < latestParts.length ? latestParts[i] : 0;
      final c = i < currentParts.length ? currentParts[i] : 0;
      if (l > c) return true;
      if (l < c) return false;
    }
    return false;
  }

  Future<void> _startDownload() async {
    final url = _apkDownloadUrl;
    if (url == null) {
      // Fallback: Open GitHub Releases in browser
      _openReleasesPage();
      return;
    }

    setState(() {
      _status = _UpdateStatus.downloading;
      _downloadedBytes = 0;
      _totalBytes = 0;
      _downloadSpeedMbps = 0.0;
    });

    try {
      final tempDir = await getTemporaryDirectory();
      final apkFile = File('${tempDir.path}/open_gym_$_latestVersion.apk');
      if (apkFile.existsSync()) apkFile.deleteSync();

      final client = HttpClient();
      final request = await client.getUrl(Uri.parse(url));
      _activeRequest = request;
      final response = await request.close();

      _totalBytes = response.contentLength;
      final sink = apkFile.openWrite();

      int bytesSinceLastSample = 0;
      DateTime lastSampleTime = DateTime.now();

      _downloadSubscription = response.listen(
        (chunk) {
          sink.add(chunk);
          _downloadedBytes += chunk.length;
          bytesSinceLastSample += chunk.length;

          final now = DateTime.now();
          final elapsed = now.difference(lastSampleTime).inMilliseconds;
          if (elapsed >= 500) {
            final speed = (bytesSinceLastSample / 1024 / 1024) / (elapsed / 1000.0);
            setState(() {
              _downloadSpeedMbps = speed;
            });
            bytesSinceLastSample = 0;
            lastSampleTime = now;
          }
        },
        onDone: () async {
          await sink.flush();
          await sink.close();
          setState(() {
            _status = _UpdateStatus.downloaded;
            _downloadedFilePath = apkFile.path;
          });
          _installApk(apkFile.path);
        },
        onError: (err) {
          setState(() {
            _status = _UpdateStatus.error;
            _errorMessage = 'Download interrupted: $err';
          });
        },
        cancelOnError: true,
      );
    } catch (e) {
      setState(() {
        _status = _UpdateStatus.error;
        _errorMessage = 'Download failed: $e';
      });
    }
  }

  Future<void> _installApk(String path) async {
    try {
      const channel = MethodChannel('gymmane/installer');
      await channel.invokeMethod('install', {'path': path});
    } catch (e) {
      // If method channel not available or fails, show snackbar
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Installation intent triggered: $path'),
            backgroundColor: context.gc.accent,
          ),
        );
      }
    }
  }

  Future<void> _openReleasesPage() async {
    final uri = Uri.parse('https://github.com/smartworldarafath/Open-GYM/releases');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;

    return Scaffold(
      backgroundColor: gc.bg,
      body: RiseScope(
        id: 'update_screen',
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                child: ScreenHeader(
                  title: 'App Updates',
                  onBack: () => Navigator.of(context).pop(),
                  titleSize: 18,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildHeaderCard(gc),
                      const SizedBox(height: 20),
                      _buildStatusCard(gc),
                      if (_releaseNotes.isNotEmpty) ...[
                        const SizedBox(height: 20),
                        _buildReleaseNotesCard(gc),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCard(GymColors gc) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: gc.bgRaised,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: gc.border),
      ),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: gc.bgRaised2,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Image.asset(
              'assets/icon/ic_1024.png',
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Icon(PhosphorIconsFill.barbell, color: gc.accent, size: 32),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Open GYM',
                    style: AppTheme.f(22, weight: FontWeight.w800, color: gc.text)),
                const SizedBox(height: 4),
                Text('Current Version: ${widget.currentVersion}',
                    style: AppTheme.f(13, weight: FontWeight.w600, color: gc.textSecondary)),
                const SizedBox(height: 2),
                Text('Channel: Stable (GitHub Releases)',
                    style: AppTheme.f(11, weight: FontWeight.w500, color: gc.textTertiary)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCard(GymColors gc) {
    switch (_status) {
      case _UpdateStatus.checking:
        return Container(
          padding: const EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: gc.bgRaised,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gc.border),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 38,
                height: 38,
                child: CircularProgressIndicator(color: gc.accent, strokeWidth: 3.5),
              ),
              const SizedBox(height: 16),
              Text('Checking for updates...',
                  style: AppTheme.f(15, weight: FontWeight.w700, color: gc.text)),
              const SizedBox(height: 4),
              Text('Connecting to GitHub repository',
                  style: AppTheme.f(12, weight: FontWeight.w500, color: gc.textSecondary)),
            ],
          ),
        );

      case _UpdateStatus.upToDate:
        return Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: gc.bgRaised,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gc.border),
          ),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: const Icon(PhosphorIconsFill.checkCircle, color: Colors.green, size: 28),
              ),
              const SizedBox(height: 12),
              Text('You are up to date!',
                  style: AppTheme.f(16, weight: FontWeight.w800, color: gc.text)),
              const SizedBox(height: 4),
              Text('v${widget.currentVersion} is currently the latest version.',
                  style: AppTheme.f(12.5, weight: FontWeight.w500, color: gc.textSecondary)),
              const SizedBox(height: 18),
              GestureDetector(
                onTap: _checkForUpdate,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: gc.bgRaised2,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: gc.border),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(PhosphorIconsRegular.arrowsClockwise, size: 16, color: gc.text),
                      const SizedBox(width: 8),
                      Text('Check Again',
                          style: AppTheme.f(13, weight: FontWeight.w700, color: gc.text)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

      case _UpdateStatus.updateAvailable:
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: gc.bgRaised,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gc.accent.withValues(alpha: 0.5)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: gc.accentSoft,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('NEW UPDATE',
                        style: AppTheme.f(11, weight: FontWeight.w800, color: gc.accent, letterSpacing: 0.5)),
                  ),
                  const Spacer(),
                  Text('v$_latestVersion',
                      style: AppTheme.f(16, weight: FontWeight.w800, color: gc.text)),
                ],
              ),
              const SizedBox(height: 12),
              Text(_releaseTitle,
                  style: AppTheme.f(15.5, weight: FontWeight.w700, color: gc.text)),
              const SizedBox(height: 18),
              GestureDetector(
                onTap: _startDownload,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: gc.accent,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: gc.accent.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(PhosphorIconsFill.downloadSimple, color: gc.onAccent, size: 18),
                      const SizedBox(width: 8),
                      Text('Download & Install Update',
                          style: AppTheme.f(14, weight: FontWeight.w800, color: gc.onAccent)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

      case _UpdateStatus.downloading:
        final progress = _totalBytes > 0 ? (_downloadedBytes / _totalBytes).clamp(0.0, 1.0) : 0.0;
        final downloadedMb = (_downloadedBytes / 1024 / 1024).toStringAsFixed(1);
        final totalMb = _totalBytes > 0 ? (_totalBytes / 1024 / 1024).toStringAsFixed(1) : '...';

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: gc.bgRaised,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gc.accent),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Downloading v$_latestVersion...',
                      style: AppTheme.f(14.5, weight: FontWeight.w700, color: gc.text)),
                  Text('${(progress * 100).toInt()}%',
                      style: AppTheme.f(15, weight: FontWeight.w800, color: gc.accent)),
                ],
              ),
              const SizedBox(height: 14),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: _totalBytes > 0 ? progress : null,
                  backgroundColor: gc.bgRaised2,
                  valueColor: AlwaysStoppedAnimation<Color>(gc.accent),
                  minHeight: 8,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$downloadedMb MB / $totalMb MB',
                      style: AppTheme.f(12, weight: FontWeight.w600, color: gc.textSecondary)),
                  Text('${_downloadSpeedMbps.toStringAsFixed(1)} MB/s',
                      style: AppTheme.f(12, weight: FontWeight.w700, color: gc.textSecondary)),
                ],
              ),
            ],
          ),
        );

      case _UpdateStatus.downloaded:
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: gc.bgRaised,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green),
          ),
          child: Column(
            children: [
              const Icon(PhosphorIconsFill.checkCircle, color: Colors.green, size: 36),
              const SizedBox(height: 10),
              Text('Download Complete!',
                  style: AppTheme.f(16, weight: FontWeight.w800, color: gc.text)),
              const SizedBox(height: 4),
              Text('Ready to install v$_latestVersion',
                  style: AppTheme.f(12.5, weight: FontWeight.w500, color: gc.textSecondary)),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  if (_downloadedFilePath != null) {
                    _installApk(_downloadedFilePath!);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(PhosphorIconsFill.arrowCircleUp, color: Colors.white, size: 18),
                      const SizedBox(width: 8),
                      Text('Install Update Now',
                          style: AppTheme.f(14, weight: FontWeight.w800, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

      case _UpdateStatus.error:
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: gc.bgRaised,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gc.border),
          ),
          child: Column(
            children: [
              Icon(PhosphorIconsRegular.warningCircle, color: gc.ember, size: 36),
              const SizedBox(height: 10),
              Text('Check for Update Failed',
                  style: AppTheme.f(15, weight: FontWeight.w800, color: gc.text)),
              const SizedBox(height: 6),
              Text(
                _errorMessage.isNotEmpty ? _errorMessage : 'Unable to connect to GitHub releases.',
                textAlign: TextAlign.center,
                style: AppTheme.f(12, weight: FontWeight.w500, color: gc.textSecondary),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _checkForUpdate,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: gc.bgRaised2,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: gc.border),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(PhosphorIconsRegular.arrowsClockwise, size: 15, color: gc.text),
                          const SizedBox(width: 6),
                          Text('Retry',
                              style: AppTheme.f(13, weight: FontWeight.w700, color: gc.text)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: _openReleasesPage,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: gc.accent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(PhosphorIconsRegular.arrowUpRight, size: 15, color: gc.onAccent),
                          const SizedBox(width: 6),
                          Text('Open GitHub',
                              style: AppTheme.f(13, weight: FontWeight.w700, color: gc.onAccent)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
    }
  }

  Widget _buildReleaseNotesCard(GymColors gc) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: gc.bgRaised,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: gc.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(PhosphorIconsRegular.fileText, size: 18, color: gc.accent),
              const SizedBox(width: 8),
              Text('What\'s New in v$_latestVersion',
                  style: AppTheme.f(14, weight: FontWeight.w800, color: gc.text)),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            _releaseNotes,
            style: AppTheme.f(12.5, weight: FontWeight.w500, color: gc.textSecondary, height: 1.5),
          ),
        ],
      ),
    );
  }
}
