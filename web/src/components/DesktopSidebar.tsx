import React from 'react';
import { useGymStore, type RouteName } from '../store/useGymStore';
import {
  Flame,
  Dumbbell,
  BarChart3,
  Library,
  Layers,
  Calculator,
  Award,
  Scale,
  BookOpen,
  User,
  Settings,
  Play,
  PlayCircle,
  Clock,
  Sparkles,
  Info,
} from 'lucide-react';
import { getAssetUrl } from '../utils/assets';

export const DesktopSidebar: React.FC = () => {
  const { route, setRoute, pushRoute, session, getStreak, unlockedAwards, startEmptyWorkout } =
    useGymStore();

  const streak = getStreak();

  const navItems: { id: RouteName; label: string; icon: React.ComponentType<{ className?: string }> }[] = [
    { id: 'home', label: 'Today Dashboard', icon: Flame },
    { id: 'train', label: 'Anatomical Map', icon: Dumbbell },
    { id: 'progress', label: 'Progress & Stats', icon: BarChart3 },
    { id: 'exercises', label: 'Exercise Library', icon: Library },
    { id: 'routines', label: 'Routines & Splits', icon: Layers },
    { id: 'tools', label: 'Gym Calculators', icon: Calculator },
    { id: 'awards', label: 'Medal Cabinet', icon: Award },
    { id: 'measures', label: 'Body & Weight', icon: Scale },
    { id: 'notes', label: 'Gym Journal', icon: BookOpen },
    { id: 'profile', label: 'Athlete Profile', icon: User },
    { id: 'settings', label: 'Settings & Privacy', icon: Settings },
  ];

  const formatTimer = (sec: number) => {
    const m = Math.floor(sec / 60);
    const s = sec % 60;
    return `${m}:${s < 10 ? '0' : ''}${s}`;
  };

  return (
    <aside className="w-64 xl:w-72 bg-[#121110] border-r border-[#242220] flex flex-col justify-between h-screen sticky top-0 select-none z-30">
      {/* Brand Header */}
      <div className="p-5 border-b border-[#22201E]">
        <div
          onClick={() => setRoute('home')}
          className="flex items-center gap-3 cursor-pointer group"
        >
          <div className="w-10 h-10 rounded-2xl bg-[#1C1A18] border border-[#332E2A] p-1.5 flex items-center justify-center shadow-lg group-hover:border-[#D9A184]/50 transition-colors">
            <img
              src={getAssetUrl('assets/icon/ic_1024.png')}
              alt="Open-GYM"
              className="w-full h-full object-contain rounded-xl"
              onError={(e) => {
                (e.target as HTMLElement).style.display = 'none';
              }}
            />
          </div>
          <div>
            <h1 className="font-black text-lg text-white tracking-tight flex items-center gap-1.5">
              Open<span className="text-[#D9A184]">-GYM</span>
            </h1>
            <p className="text-[11px] font-semibold text-neutral-400">Lift. Log it. Grow.</p>
          </div>
        </div>

        {/* Quick Streak & Medals Pill */}
        <div className="mt-4 flex items-center justify-between p-2 rounded-xl bg-[#181615] border border-[#262422]">
          <div className="flex items-center gap-1.5 text-xs font-bold text-neutral-300">
            <Flame className="w-4 h-4 text-[#FF7A00] fill-[#FF7A00]" />
            <span>{streak}d Streak</span>
          </div>

          <div
            onClick={() => pushRoute('awards')}
            className="flex items-center gap-1.5 text-xs font-bold text-[#D9A184] cursor-pointer hover:underline"
          >
            <Award className="w-4 h-4" />
            <span>{unlockedAwards.length} Medals</span>
          </div>
        </div>
      </div>

      {/* Main Nav Items List */}
      <div className="flex-1 overflow-y-auto px-3 py-4 space-y-1">
        {navItems.map((item) => {
          const Icon = item.icon;
          const isActive = route === item.id;
          return (
            <button
              key={item.id}
              onClick={() => setRoute(item.id)}
              className={`w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl font-bold text-xs transition-all text-left ${
                isActive
                  ? 'bg-[#2A2420] text-[#D9A184] border border-[#D9A184]/40 shadow-sm'
                  : 'text-neutral-400 hover:text-white hover:bg-[#1A1817]'
              }`}
            >
              <Icon className={`w-4 h-4 ${isActive ? 'text-[#D9A184]' : 'text-neutral-500'}`} />
              <span className="flex-1">{item.label}</span>
              {item.id === 'exercises' && (
                <span className="text-[10px] bg-[#1F1D1B] px-1.5 py-0.5 rounded text-neutral-400 font-mono">
                  552
                </span>
              )}
              {item.id === 'awards' && (
                <span className="text-[10px] bg-[#1F1D1B] px-1.5 py-0.5 rounded text-neutral-400 font-mono">
                  20
                </span>
              )}
            </button>
          );
        })}
      </div>

      {/* Bottom Session Launcher & Live Session Mini-Player */}
      <div className="p-4 border-t border-[#22201E] space-y-2.5 bg-[#0F0E0D]">
        {session ? (
          <div
            onClick={() => pushRoute('session')}
            className="bg-[#261E19] hover:bg-[#302620] border border-[#D9A184]/50 rounded-2xl p-3 cursor-pointer transition-all shadow-lg text-white"
          >
            <div className="flex items-center justify-between text-xs font-bold mb-1">
              <span className="flex items-center gap-1.5 text-[#D9A184]">
                <span className="w-2 h-2 rounded-full bg-[#D9A184] animate-ping" />
                Live Workout
              </span>
              <span className="font-mono text-white">{formatTimer(session.elapsedSeconds)}</span>
            </div>
            <p className="text-[11px] text-neutral-300 font-medium truncate">
              {session.exercises.length} exercises logged
            </p>
          </div>
        ) : (
          <button
            onClick={() => setRoute('train')}
            className="w-full py-3 px-4 rounded-xl bg-[#D9A184] hover:bg-[#E5AC8F] text-[#140D09] font-black text-xs flex items-center justify-center gap-2 shadow-lg shadow-[#D9A184]/15 active:scale-98 transition-all"
          >
            <Play className="w-4 h-4 fill-current" />
            Start Training
          </button>
        )}

        <button
          onClick={() => pushRoute('about')}
          className="w-full py-1 text-center text-[11px] text-neutral-500 hover:text-neutral-400 font-medium flex items-center justify-center gap-1"
        >
          <Info className="w-3.5 h-3.5" /> Open-GYM v1.3.0 · Offline & Ad-Free
        </button>
      </div>
    </aside>
  );
};
