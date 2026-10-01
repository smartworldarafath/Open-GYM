import React, { useRef } from 'react';
import { useGymStore } from '../store/useGymStore';
import { sound } from '../services/sound';
import {
  Moon,
  Sun,
  Volume2,
  VolumeX,
  Download,
  Upload,
  Trash2,
  Info,
  Check,
  Scale,
  Sparkles,
} from 'lucide-react';

export const SettingsScreen: React.FC = () => {
  const {
    settings,
    updateSettings,
    exportDataJSON,
    importDataJSON,
    resetAllData,
    pushRoute,
  } = useGymStore();

  const fileInputRef = useRef<HTMLInputElement>(null);

  const handleFileUpload = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (event) => {
      const text = event.target?.result as string;
      if (text) {
        const ok = importDataJSON(text);
        if (ok) {
          alert('Backup restored successfully!');
        } else {
          alert('Failed to parse backup file. Please ensure it is valid JSON.');
        }
      }
    };
    reader.readAsText(file);
  };

  return (
    <div className="max-w-4xl mx-auto space-y-6 pb-24 animate-in fade-in duration-200">
      <div>
        <h2 className="text-xl font-black text-white tracking-tight">Settings & Privacy</h2>
        <p className="text-xs text-neutral-400 mt-0.5">
          Customize your gym interface, sound and local data
        </p>
      </div>

      {/* Theme Settings */}
      <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
        <h3 className="text-xs font-bold text-neutral-300 uppercase tracking-wider">
          Appearance Theme
        </h3>
        <div className="grid grid-cols-2 gap-2">
          {[
            { id: 'dark', label: 'Dark Charcoal', color: 'bg-[#121212]' },
            { id: 'amoled', label: 'OLED Pure Black', color: 'bg-[#000000]' },
            { id: 'warm', label: 'Warm Terracotta', color: 'bg-[#18120E]' },
            { id: 'light', label: 'Clean Paper Light', color: 'bg-[#F5F2EB] text-black' },
          ].map((th) => {
            const isSelected = settings.theme === th.id;
            return (
              <button
                key={th.id}
                onClick={() => updateSettings({ theme: th.id as any })}
                className={`p-3 rounded-xl border text-xs font-bold text-left flex items-center justify-between transition-all ${
                  isSelected
                    ? 'border-[#D9A184] bg-[#221F1C] text-white shadow'
                    : 'border-[#2E2E2E] bg-[#141414] text-neutral-400'
                }`}
              >
                <span>{th.label}</span>
                {isSelected && <Check className="w-4 h-4 text-[#D9A184]" />}
              </button>
            );
          })}
        </div>
      </div>

      {/* Units & Audio */}
      <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
        <h3 className="text-xs font-bold text-neutral-300 uppercase tracking-wider">
          Units & Feedback
        </h3>

        {/* Units toggle */}
        <div className="flex items-center justify-between py-2 border-b border-[#242424]">
          <div>
            <span className="text-xs font-bold text-white block">Weight Units</span>
            <span className="text-[11px] text-neutral-500">Currently using {settings.units.toUpperCase()}</span>
          </div>
          <div className="flex bg-[#121212] p-1 rounded-xl border border-[#2A2A2A]">
            <button
              onClick={() => updateSettings({ units: 'kg' })}
              className={`px-3 py-1 rounded-lg text-xs font-bold transition-all ${
                settings.units === 'kg' ? 'bg-[#D9A184] text-[#140D09]' : 'text-neutral-400'
              }`}
            >
              KG
            </button>
            <button
              onClick={() => updateSettings({ units: 'lb' })}
              className={`px-3 py-1 rounded-lg text-xs font-bold transition-all ${
                settings.units === 'lb' ? 'bg-[#D9A184] text-[#140D09]' : 'text-neutral-400'
              }`}
            >
              LB
            </button>
          </div>
        </div>

        {/* Sound toggle */}
        <div className="flex items-center justify-between py-2 border-b border-[#242424]">
          <div>
            <span className="text-xs font-bold text-white block">Audio Sound Effects</span>
            <span className="text-[11px] text-neutral-500">Rest timer alerts & set ticks</span>
          </div>
          <div className="flex items-center gap-2">
            <button
              onClick={() => {
                sound.playBeepBell();
              }}
              className="text-[10px] text-neutral-400 hover:text-white px-2 py-1 rounded-lg bg-[#222]"
            >
              Test Bell
            </button>
            <button
              onClick={() => updateSettings({ soundEnabled: !settings.soundEnabled })}
              className={`p-2 rounded-xl border transition-all ${
                settings.soundEnabled
                  ? 'bg-[#D9A184]/20 border-[#D9A184]/50 text-[#D9A184]'
                  : 'bg-[#222] border-[#333] text-neutral-500'
              }`}
            >
              {settings.soundEnabled ? <Volume2 className="w-4 h-4" /> : <VolumeX className="w-4 h-4" />}
            </button>
          </div>
        </div>

        {/* Default Rest Duration */}
        <div className="flex items-center justify-between py-2">
          <div>
            <span className="text-xs font-bold text-white block">Default Rest Countdown</span>
            <span className="text-[11px] text-neutral-500">Auto-triggers upon set completion</span>
          </div>
          <select
            value={settings.defaultRestSec}
            onChange={(e) => updateSettings({ defaultRestSec: parseInt(e.target.value) || 90 })}
            className="bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-1.5 text-xs font-bold text-white"
          >
            <option value={45}>45 seconds</option>
            <option value={60}>60 seconds</option>
            <option value={90}>90 seconds</option>
            <option value={120}>2 minutes</option>
            <option value={180}>3 minutes</option>
          </select>
        </div>
      </div>

      {/* Data Backup & Portability */}
      <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
        <h3 className="text-xs font-bold text-neutral-300 uppercase tracking-wider">
          Offline Privacy & Data Portability
        </h3>
        <p className="text-xs text-neutral-400 leading-relaxed">
          Open-GYM has no cloud tracking, no cookies, and no third-party servers. Your data is your own.
        </p>

        <div className="grid grid-cols-2 gap-2 pt-1">
          <button
            onClick={exportDataJSON}
            className="p-3 rounded-xl bg-[#222] hover:bg-[#2A2A2A] border border-[#333] text-neutral-200 text-xs font-bold flex items-center justify-center gap-1.5 active:scale-95 transition-all"
          >
            <Download className="w-4 h-4 text-[#D9A184]" />
            Export Backup
          </button>

          <button
            onClick={() => fileInputRef.current?.click()}
            className="p-3 rounded-xl bg-[#222] hover:bg-[#2A2A2A] border border-[#333] text-neutral-200 text-xs font-bold flex items-center justify-center gap-1.5 active:scale-95 transition-all"
          >
            <Upload className="w-4 h-4 text-[#8FA377]" />
            Restore Backup
          </button>
          <input
            ref={fileInputRef}
            type="file"
            accept=".json"
            onChange={handleFileUpload}
            className="hidden"
          />
        </div>

        <div className="pt-2 border-t border-[#242424]">
          <button
            onClick={() => {
              if (
                confirm(
                  'Are you sure you want to permanently erase all workouts, routines and records? This cannot be undone.'
                )
              ) {
                resetAllData();
              }
            }}
            className="w-full py-2.5 rounded-xl bg-red-950/20 hover:bg-red-950/40 border border-red-900/40 text-red-400 font-bold text-xs flex items-center justify-center gap-1.5 transition-colors"
          >
            <Trash2 className="w-3.5 h-3.5" />
            Wipe Local Data
          </button>
        </div>
      </div>

      {/* About Link */}
      <div
        onClick={() => pushRoute('about')}
        className="bg-[#181818] hover:bg-[#222] border border-[#282828] rounded-2xl p-4 cursor-pointer flex items-center justify-between text-xs text-neutral-300 font-bold transition-all"
      >
        <div className="flex items-center gap-2">
          <Info className="w-4 h-4 text-[#D9A184]" />
          <span>About Open-GYM & Credits</span>
        </div>
        <span className="text-neutral-500 font-mono">v1.3.0 →</span>
      </div>
    </div>
  );
};
