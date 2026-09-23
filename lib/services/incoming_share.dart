import 'package:flutter/services.dart';

class IncomingShare {
  IncomingShare._();

  static const _channel = MethodChannel('gymmane/incoming');

  static void listen(void Function(String text) onText) {
    _channel.setMethodCallHandler((call) async {
      final text = call.arguments;
      if (call.method == 'incoming' && text is String && text.trim().isNotEmpty) onText(text);
    });
  }

  static Future<String?> take() async {
    try {
      final text = await _channel.invokeMethod<String>('take');
      return text == null || text.trim().isEmpty ? null : text;
    } catch (_) {
      return null;
    }
  }
}
