import React from 'react';
import { useGymStore } from '../store/useGymStore';
import { sound } from '../services/sound';
import {
  Volume2,
  VolumeX,
  Play,
  PlayCircle,
  Clock,
  Sparkles,
  Calendar,
  Layers,
} from 'lucide-react';

export const DesktopTopBar: React.FC = () => {
  const { route, settings, updateSettings, session, pushRoute, startEmptyWorkout } = useGymStore();

  const routeTitles: Record<string, string> = {
    home: 'Today Dashboard',
    train: 'Choose Your Focus · Anatomical Map',
    session: 'Live Workout Session',
    progress: 'Progress & Analytics',
    exercises: 'Exercise Catalog (552 Built-in)',
    'exercise-detail': 'Exercise Technique & Animation',
    routines: 'Routines & Programs',
    tools: 'Gym Calculators',
    awards: 'Medals & Achievements',
    measures: 'Bodyweight & Measurements',
    notes: 'Gym Journal & Notes',
    profile: 'Athlete Profile',
    settings: 'Settings & Privacy',
    about: 'About Open-GYM',
  };

  const todayDateStr = new Date().toLocaleDateString('en-US', {
    weekday: 'long',
    month: 'short',
    day: 'numeric',
  });

  return (
    <header className="h-16 border-b border-[#242220] bg-[#121110]/95 backdrop-blur-md px-6 flex items-center justify-between sticky top-0 z-20 select-none">
      <div className="flex items-center gap-3">
        <h2 className="text-base font-black text-white tracking-tight">
          {routeTitles[route] || 'Open-GYM'}
        </h2>
        <span className="hidden sm:inline-block text-neutral-600 font-mono text-xs">/</span>
        <span className="hidden sm:flex items-center gap-1.5 text-xs text-neutral-400 font-medium">
          <Calendar className="w-3.5 h-3.5 text-[#D9A184]" />
          {todayDateStr}
        </span>
      </div>

      <div className="flex items-center gap-3">
        {/* Unit Switcher Pill */}
        <div className="flex bg-[#1A1817] p-1 rounded-xl border border-[#2B2826] text-xs">
          <button
            onClick={() => updateSettings({ units: 'kg' })}
            className={`px-2.5 py-1 rounded-lg font-extrabold transition-all ${
              settings.units === 'kg' ? 'bg-[#D9A184] text-[#140D09] shadow-sm' : 'text-neutral-400'
            }`}
          >
            KG
          </button>
          <button
            onClick={() => updateSettings({ units: 'lb' })}
            className={`px-2.5 py-1 rounded-lg font-extrabold transition-all ${
              settings.units === 'lb' ? 'bg-[#D9A184] text-[#140D09] shadow-sm' : 'text-neutral-400'
            }`}
          >
            LB
          </button>
        </div>

        {/* Sound Toggle */}
        <button
          onClick={() => {
            const next = !settings.soundEnabled;
            updateSettings({ soundEnabled: next });
            if (next) sound.playTick(true);
          }}
          className={`p-2 rounded-xl border transition-all active:scale-95 ${
            settings.soundEnabled
              ? 'bg-[#2A2420] border-[#D9A184]/40 text-[#D9A184]'
              : 'bg-[#181615] border-[#2A2826] text-neutral-500'
          }`}
          title={settings.soundEnabled ? 'Sound is ON' : 'Sound is OFF'}
        >
          {settings.soundEnabled ? <Volume2 className="w-4 h-4" /> : <VolumeX className="w-4 h-4" />}
        </button>

        {/* Quick Action Button */}
        {session ? (
          <button
            onClick={() => pushRoute('session')}
            className="px-4 py-2 rounded-xl bg-[#D9A184] hover:bg-[#E5AC8F] text-[#140D09] font-black text-xs flex items-center gap-2 shadow-lg shadow-[#D9A184]/20 active:scale-95 transition-all"
          >
            <PlayCircle className="w-4 h-4 animate-pulse" />
            Resume Live Session
          </button>
        ) : (
          <button
            onClick={startEmptyWorkout}
            className="px-4 py-2 rounded-xl bg-[#262422] hover:bg-[#33302C] text-neutral-200 border border-[#3E3A35] font-bold text-xs flex items-center gap-1.5 active:scale-95 transition-all"
          >
            <Play className="w-3.5 h-3.5 text-[#D9A184] fill-current" />
            Quick Workout
          </button>
        )}
      </div>
    </header>
  );
};
