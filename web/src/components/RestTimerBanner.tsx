import React, { useEffect, useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { Clock, Plus, Minus, SkipForward } from 'lucide-react';

export const RestTimerBanner: React.FC = () => {
  const { session, adjustRestTime, skipRestTimer } = useGymStore();
  const [secondsLeft, setSecondsLeft] = useState<number | null>(null);

  useEffect(() => {
    if (!session?.restEndsAt) {
      setSecondsLeft(null);
      return;
    }

    const update = () => {
      if (!session.restEndsAt) {
        setSecondsLeft(null);
        return;
      }
      const diffMs = session.restEndsAt - Date.now();
      const left = Math.max(0, Math.ceil(diffMs / 1000));
      setSecondsLeft(left > 0 ? left : null);
    };

    update();
    const interval = setInterval(update, 250);
    return () => clearInterval(interval);
  }, [session?.restEndsAt]);

  if (!secondsLeft || secondsLeft <= 0) return null;

  const total = session?.restTotalSeconds || 90;
  const progressPct = Math.min(100, Math.max(0, (secondsLeft / total) * 100));

  const formatTime = (sec: number) => {
    const m = Math.floor(sec / 60);
    const s = sec % 60;
    return `${m}:${s < 10 ? '0' : ''}${s}`;
  };

  return (
    <div className="fixed bottom-20 left-1/2 -translate-x-1/2 w-[92%] max-w-md z-40 lg:bottom-8 lg:right-8 lg:left-auto lg:translate-x-0 lg:w-96 animate-in fade-in slide-in-from-bottom-4 duration-200">
      <div className="bg-[#1C1C1C]/95 backdrop-blur-xl border border-[#3E3E3E] rounded-2xl p-3 shadow-2xl shadow-black/80 flex items-center justify-between text-white">
        <div className="flex items-center gap-3">
          <div className="relative w-11 h-11 flex items-center justify-center">
            {/* Circular Progress */}
            <svg className="w-11 h-11 -rotate-90">
              <circle
                cx="22"
                cy="22"
                r="18"
                className="stroke-[#2B2B2B]"
                strokeWidth="3.5"
                fill="none"
              />
              <circle
                cx="22"
                cy="22"
                r="18"
                className="stroke-[#D9A184] transition-all duration-300"
                strokeWidth="3.5"
                strokeDasharray={113}
                strokeDashoffset={113 - (113 * progressPct) / 100}
                strokeLinecap="round"
                fill="none"
              />
            </svg>
            <Clock className="w-4 h-4 text-[#D9A184] absolute" />
          </div>

          <div>
            <div className="text-[11px] font-semibold text-neutral-400 uppercase tracking-wider">
              Rest Clock
            </div>
            <div className="text-xl font-black tracking-tight text-white font-mono">
              {formatTime(secondsLeft)}
            </div>
          </div>
        </div>

        {/* Adjust & Skip controls */}
        <div className="flex items-center gap-1.5">
          <button
            onClick={() => adjustRestTime(-15)}
            className="px-2.5 py-1.5 rounded-lg bg-[#2B2B2B] hover:bg-[#383838] active:scale-95 text-xs font-bold text-neutral-300 transition-all flex items-center"
            title="Subtract 15 seconds"
          >
            <Minus className="w-3.5 h-3.5 mr-0.5" />
            15
          </button>
          <button
            onClick={() => adjustRestTime(15)}
            className="px-2.5 py-1.5 rounded-lg bg-[#2B2B2B] hover:bg-[#383838] active:scale-95 text-xs font-bold text-neutral-300 transition-all flex items-center"
            title="Add 15 seconds"
          >
            <Plus className="w-3.5 h-3.5 mr-0.5" />
            15
          </button>
          <button
            onClick={skipRestTimer}
            className="p-1.5 rounded-lg bg-[#D9A184]/20 hover:bg-[#D9A184]/30 text-[#D9A184] active:scale-95 transition-all"
            title="Skip Rest"
          >
            <SkipForward className="w-4 h-4" />
          </button>
        </div>
      </div>
    </div>
  );
};
