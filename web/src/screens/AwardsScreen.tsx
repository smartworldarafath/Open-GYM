import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { AWARDS, type Award } from '../data/awards';
import { Award as AwardIcon, CheckCircle2, Lock, Sparkles, X } from 'lucide-react';
import { getAssetUrl } from '../utils/assets';

export const AwardsScreen: React.FC = () => {
  const { unlockedAwards } = useGymStore();
  const [selectedAward, setSelectedAward] = useState<Award | null>(null);

  const unlockedCount = unlockedAwards.length;
  const totalCount = AWARDS.length;
  const completionPct = Math.round((unlockedCount / totalCount) * 100);

  return (
    <div className="max-w-6xl mx-auto space-y-6 pb-24 animate-in fade-in duration-200">
      <div>
        <h2 className="text-2xl font-black text-white tracking-tight">Medal Cabinet</h2>
        <p className="text-xs text-neutral-400 mt-1">
          20 iron badges to celebrate your training consistency, volume, and milestones
        </p>
      </div>

      {/* Progress Card */}
      <div className="bg-[#181818] border border-[#282828] rounded-2xl p-5 space-y-3">
        <div className="flex justify-between items-center text-sm font-bold">
          <span className="text-neutral-300">Medals Unlocked</span>
          <span className="text-[#D9A184] font-mono">
            {unlockedCount} / {totalCount} ({completionPct}%)
          </span>
        </div>
        <div className="w-full h-3 bg-[#121212] rounded-full overflow-hidden border border-[#222]">
          <div
            className="h-full bg-gradient-to-r from-[#B4632C] to-[#D9A184] rounded-full transition-all duration-500"
            style={{ width: `${completionPct}%` }}
          />
        </div>
      </div>

      {/* Medals Grid */}
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-3">
        {AWARDS.map((award) => {
          const isUnlocked = unlockedAwards.includes(award.id);
          const badgeImg = isUnlocked
            ? getAssetUrl(`assets/badges/${award.id}.webp`)
            : getAssetUrl(`assets/badges/${award.id}_off.webp`);

          return (
            <div
              key={award.id}
              onClick={() => setSelectedAward(award)}
              className={`p-3.5 rounded-2xl border transition-all cursor-pointer flex flex-col items-center text-center justify-between active:scale-98 ${
                isUnlocked
                  ? 'bg-[#181818] border-[#383838] hover:border-[#D9A184]/50 shadow-md'
                  : 'bg-[#141414] border-[#222222] opacity-50 hover:opacity-75'
              }`}
            >
              <div className="relative w-20 h-20 flex items-center justify-center my-1">
                <img
                  src={badgeImg}
                  alt={award.name}
                  className={`w-full h-full object-contain drop-shadow-md ${
                    isUnlocked ? 'filter-none scale-105' : 'grayscale opacity-70'
                  }`}
                  onError={(e) => {
                    // Fallback to icon if webp fails
                    (e.target as HTMLElement).style.display = 'none';
                  }}
                />
                {!isUnlocked && (
                  <div className="absolute inset-0 flex items-center justify-center">
                    <div className="p-1 rounded-full bg-black/60 backdrop-blur-sm text-neutral-400">
                      <Lock className="w-3.5 h-3.5" />
                    </div>
                  </div>
                )}
              </div>

              <div>
                <h4 className="font-bold text-xs text-white line-clamp-1 mt-1">{award.name}</h4>
                <p className="text-[10px] text-neutral-400 line-clamp-2 mt-0.5">{award.desc}</p>
              </div>
            </div>
          );
        })}
      </div>

      {/* Detail Modal */}
      {selectedAward && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#181818] border border-[#2B2B2B] rounded-3xl w-full max-w-sm p-6 text-center space-y-4 animate-in zoom-in-95 duration-200 relative">
            <button
              onClick={() => setSelectedAward(null)}
              className="absolute top-4 right-4 p-1 text-neutral-400 hover:text-white"
            >
              <X className="w-5 h-5" />
            </button>

            <div className="w-28 h-28 mx-auto flex items-center justify-center">
              <img
                src={
                  unlockedAwards.includes(selectedAward.id)
                    ? getAssetUrl(`assets/badges/${selectedAward.id}.webp`)
                    : getAssetUrl(`assets/badges/${selectedAward.id}_off.webp`)
                }
                alt={selectedAward.name}
                className="w-full h-full object-contain drop-shadow-xl"
              />
            </div>

            <div>
              <span className="text-[10px] font-bold text-[#D9A184] uppercase tracking-widest block mb-1">
                {unlockedAwards.includes(selectedAward.id) ? 'UNLOCKED' : 'LOCKED'}
              </span>
              <h3 className="text-xl font-black text-white">{selectedAward.name}</h3>
              <p className="text-xs text-neutral-300 mt-2 leading-relaxed">
                {selectedAward.desc}
              </p>
            </div>

            <button
              onClick={() => setSelectedAward(null)}
              className="w-full py-2.5 rounded-xl bg-[#242424] text-neutral-200 font-bold text-xs"
            >
              Close
            </button>
          </div>
        </div>
      )}
    </div>
  );
};
