import React from 'react';
import { useGymStore } from '../store/useGymStore';
import { ChevronLeft, Flame, Award, Settings, User } from 'lucide-react';
import { getAssetUrl } from '../utils/assets';

interface HeaderProps {
  title?: string;
  showBack?: boolean;
}

export const Header: React.FC<HeaderProps> = ({ title, showBack }) => {
  const { route, popRoute, pushRoute, getStreak, unlockedAwards } = useGymStore();

  const isRootTab = ['home', 'train', 'progress', 'exercises'].includes(route);
  const shouldShowBack = showBack ?? !isRootTab;
  const streak = getStreak();

  return (
    <header className="sticky top-0 z-20 bg-[#0A0A0A]/95 backdrop-blur-xl border-b border-[#1F1F1F] px-4 py-3">
      <div className="max-w-md mx-auto flex items-center justify-between">
        <div className="flex items-center gap-2">
          {shouldShowBack ? (
            <button
              onClick={() => popRoute()}
              className="p-1.5 -ml-1 rounded-xl bg-[#1C1C1C] hover:bg-[#2B2B2B] text-neutral-300 transition-all flex items-center justify-center active:scale-95"
            >
              <ChevronLeft className="w-5 h-5" />
            </button>
          ) : (
            <div className="flex items-center gap-2">
              <img
                src={getAssetUrl('assets/icon/ic_1024.png')}
                alt="Open-GYM"
                className="w-7 h-7 rounded-lg shadow"
                onError={(e) => {
                  (e.target as HTMLElement).style.display = 'none';
                }}
              />
              <span className="font-extrabold tracking-tight text-white text-lg">
                Open<span className="text-[#D9A184]">-GYM</span>
              </span>
            </div>
          )}

          {title && (
            <h1 className="font-bold text-base text-white tracking-tight ml-1">{title}</h1>
          )}
        </div>

        {/* Right Actions: Streak & Settings / Awards */}
        <div className="flex items-center gap-2">
          {/* Streak Indicator */}
          <div
            onClick={() => pushRoute('progress')}
            className="flex items-center gap-1 bg-[#1C1C1C] border border-[#2B2B2B] hover:border-[#D9A184]/40 px-2.5 py-1 rounded-xl cursor-pointer transition-colors active:scale-95"
            title={`${streak} Day Streak`}
          >
            <Flame className={`w-3.5 h-3.5 ${streak > 0 ? 'text-[#FF7A00] fill-[#FF7A00]' : 'text-neutral-500'}`} />
            <span className="text-xs font-black font-mono text-neutral-200">{streak}</span>
          </div>

          {/* Awards Cabinet */}
          <button
            onClick={() => pushRoute('awards')}
            className={`p-2 rounded-xl bg-[#1C1C1C] border border-[#2B2B2B] hover:bg-[#262626] transition-all active:scale-95 relative ${
              route === 'awards' ? 'text-[#D9A184] border-[#D9A184]/50' : 'text-neutral-400'
            }`}
            title="Medals & Awards"
          >
            <Award className="w-4 h-4" />
            {unlockedAwards.length > 0 && (
              <span className="absolute -top-1 -right-1 w-2.5 h-2.5 bg-[#D9A184] rounded-full ring-2 ring-[#0A0A0A]" />
            )}
          </button>

          {/* Settings */}
          <button
            onClick={() => pushRoute('settings')}
            className={`p-2 rounded-xl bg-[#1C1C1C] border border-[#2B2B2B] hover:bg-[#262626] transition-all active:scale-95 ${
              route === 'settings' ? 'text-[#D9A184] border-[#D9A184]/50' : 'text-neutral-400'
            }`}
            title="Settings"
          >
            <Settings className="w-4 h-4" />
          </button>
        </div>
      </div>
    </header>
  );
};
