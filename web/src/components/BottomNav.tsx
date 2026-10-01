import React from 'react';
import { useGymStore } from '../store/useGymStore';
import { Flame, Dumbbell, BarChart3, Library, PlayCircle } from 'lucide-react';

export const BottomNav: React.FC = () => {
  const { route, setRoute, pushRoute, session } = useGymStore();

  const isMainTab = ['home', 'train', 'progress', 'exercises'].includes(route);

  return (
    <>
      {/* Active Workout Floating Bar (if workout is active and not currently on session screen) */}
      {session && route !== 'session' && (
        <div
          onClick={() => pushRoute('session')}
          className="fixed bottom-[74px] left-1/2 -translate-x-1/2 w-[92%] max-w-md z-30 cursor-pointer animate-in fade-in slide-in-from-bottom-2 duration-200"
        >
          <div className="bg-[#D9A184] text-[#140D09] rounded-2xl px-4 py-2.5 shadow-xl flex items-center justify-between font-bold">
            <div className="flex items-center gap-2">
              <PlayCircle className="w-5 h-5 animate-pulse" />
              <span className="text-sm tracking-wide">
                Workout in progress ({session.exercises.length} exercises)
              </span>
            </div>
            <span className="text-xs bg-[#140D09]/15 px-2 py-0.5 rounded-full font-mono">
              Resume →
            </span>
          </div>
        </div>
      )}

      {/* Main Bottom Bar */}
      <nav className="fixed bottom-0 left-0 right-0 z-30 bg-[#0A0A0A]/95 backdrop-blur-xl border-t border-[#262626] pb-safe">
        <div className="max-w-md mx-auto flex items-center justify-around h-16 px-2">
          <button
            onClick={() => setRoute('home')}
            className={`flex flex-col items-center justify-center w-16 py-1 transition-all ${
              route === 'home' ? 'text-[#D9A184] scale-105' : 'text-neutral-500 hover:text-neutral-300'
            }`}
          >
            <Flame className={`w-5 h-5 ${route === 'home' ? 'fill-current' : ''}`} />
            <span className="text-[10px] font-bold mt-1 tracking-tight">Today</span>
          </button>

          <button
            onClick={() => setRoute('train')}
            className={`flex flex-col items-center justify-center w-16 py-1 transition-all ${
              route === 'train' ? 'text-[#D9A184] scale-105' : 'text-neutral-500 hover:text-neutral-300'
            }`}
          >
            <Dumbbell className="w-5 h-5" />
            <span className="text-[10px] font-bold mt-1 tracking-tight">Train</span>
          </button>

          <button
            onClick={() => setRoute('progress')}
            className={`flex flex-col items-center justify-center w-16 py-1 transition-all ${
              route === 'progress' ? 'text-[#D9A184] scale-105' : 'text-neutral-500 hover:text-neutral-300'
            }`}
          >
            <BarChart3 className="w-5 h-5" />
            <span className="text-[10px] font-bold mt-1 tracking-tight">Progress</span>
          </button>

          <button
            onClick={() => setRoute('exercises')}
            className={`flex flex-col items-center justify-center w-16 py-1 transition-all ${
              route === 'exercises' ? 'text-[#D9A184] scale-105' : 'text-neutral-500 hover:text-neutral-300'
            }`}
          >
            <Library className="w-5 h-5" />
            <span className="text-[10px] font-bold mt-1 tracking-tight">Library</span>
          </button>
        </div>
      </nav>
    </>
  );
};
