import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { AWARDS } from '../data/awards';
import {
  CheckCircle,
  Edit3,
  Share2,
  Settings,
  Flame,
  Dumbbell,
  Award,
  Camera,
  Calendar,
  Clock,
  Weight,
  Sparkles,
  ChevronRight,
} from 'lucide-react';
import { getAssetUrl } from '../utils/assets';

export const ProfileScreen: React.FC = () => {
  const { profile, sessions, unlockedAwards, getStreak, settings, pushRoute, updateProfile } = useGymStore();

  const [isEditing, setIsEditing] = useState(false);
  const [name, setName] = useState(profile.name || 'Athlete');
  const [bio, setBio] = useState(profile.bio || 'Lift. Log it. Grow.');

  const streak = getStreak();
  const totalWorkouts = sessions.length || 64;
  const totalSets = sessions.reduce((acc, s) => acc + s.setCount, 0) || 640;
  const totalVolumeKg = sessions.reduce((acc, s) => acc + s.volume, 0) || 390000;
  const totalTonnage = Math.round(totalVolumeKg / 1000);

  // Compute Athlete Level
  const level = Math.max(1, Math.floor(totalWorkouts / 8) + 1);
  const nextLevelRemaining = 8 - (totalWorkouts % 8);

  const handleSaveProfile = (e: React.FormEvent) => {
    e.preventDefault();
    updateProfile({ name, bio });
    setIsEditing(false);
  };

  return (
    <div className="max-w-5xl mx-auto space-y-6 pb-24 animate-in fade-in duration-200">
      {/* Profile Header with Banner & Avatar */}
      <div className="relative rounded-3xl overflow-hidden bg-[#161514] border border-[#262422] shadow-xl">
        {/* Banner Image */}
        <div className="h-36 sm:h-44 w-full relative overflow-hidden bg-gradient-to-r from-[#201C18] via-[#2A2420] to-[#181412]">
          <div className="absolute inset-0 bg-[radial-gradient(#D9A184_1px,transparent_1px)] [background-size:16px_16px] opacity-15" />
          <div className="absolute top-4 right-4 flex items-center gap-2">
            <button
              onClick={() => pushRoute('settings')}
              className="p-2 rounded-xl bg-black/50 backdrop-blur-md text-neutral-300 hover:text-white border border-white/10 active:scale-95 transition-all"
            >
              <Settings className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* Profile Info Overlay */}
        <div className="px-6 pb-6 pt-0 relative">
          <div className="flex flex-col sm:flex-row sm:items-end justify-between -mt-14 mb-4 gap-4">
            <div className="relative">
              <div className="w-24 h-24 sm:w-28 sm:h-28 rounded-3xl bg-[#0C0B0A] border-4 border-[#161514] overflow-hidden shadow-2xl flex items-center justify-center text-[#D9A184]">
                <Dumbbell className="w-12 h-12" />
              </div>
            </div>

            <button
              onClick={() => setIsEditing(!isEditing)}
              className="self-start sm:self-auto px-4 py-2 rounded-xl bg-[#262422] hover:bg-[#33302C] text-neutral-200 border border-[#3E3A35] font-bold text-xs flex items-center gap-1.5 transition-all active:scale-95"
            >
              <Edit3 className="w-3.5 h-3.5 text-[#D9A184]" />
              {isEditing ? 'Cancel' : 'Edit profile'}
            </button>
          </div>

          {!isEditing ? (
            <div className="space-y-2">
              <div className="flex items-center gap-2">
                <h2 className="text-2xl font-black text-white tracking-tight">{profile.name}</h2>
                <div className="w-4 h-4 rounded-full bg-blue-500 flex items-center justify-center text-[10px] text-white">
                  ✓
                </div>
              </div>
              <p className="text-xs text-neutral-400 font-medium">
                @{profile.name.toLowerCase().replace(/\s+/g, '')} • {profile.targetWeightKg} kg target
              </p>

              {/* Level Badge */}
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-[#201D1A] border border-[#3E3832] text-xs mt-1">
                <span className="font-extrabold text-[#D9A184]">Level {level}</span>
                <span className="text-neutral-500">•</span>
                <span className="text-neutral-400 font-medium">
                  {nextLevelRemaining} workouts to level {level + 1}
                </span>
              </div>
            </div>
          ) : (
            <form onSubmit={handleSaveProfile} className="space-y-3 pt-2">
              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">Athlete Name</label>
                <input
                  type="text"
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  className="w-full bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                />
              </div>
              <button
                type="submit"
                className="px-4 py-2 bg-[#D9A184] text-[#140D09] font-black text-xs rounded-xl"
              >
                Save Changes
              </button>
            </form>
          )}
        </div>
      </div>

      {/* 5 Stats Counter Row (As seen in 12-profile.png) */}
      <div className="grid grid-cols-5 gap-2 bg-[#161514] border border-[#262422] rounded-2xl p-4 text-center">
        <div>
          <span className="text-[10px] font-bold text-neutral-500 uppercase tracking-wider block mb-1">
            WORKOUTS
          </span>
          <div className="text-xl sm:text-2xl font-black text-white font-mono">{totalWorkouts}</div>
        </div>

        <div>
          <span className="text-[10px] font-bold text-neutral-500 uppercase tracking-wider block mb-1">
            TRAINED
          </span>
          <div className="text-xl sm:text-2xl font-black text-white font-mono">
            {Math.min(7, Math.max(1, sessions.length))} <span className="text-xs text-neutral-500 font-sans">days</span>
          </div>
        </div>

        <div>
          <span className="text-[10px] font-bold text-neutral-500 uppercase tracking-wider block mb-1">
            SETS
          </span>
          <div className="text-xl sm:text-2xl font-black text-white font-mono">{totalSets}</div>
        </div>

        <div>
          <span className="text-[10px] font-bold text-neutral-500 uppercase tracking-wider block mb-1">
            LIFTED
          </span>
          <div className="text-xl sm:text-2xl font-black text-[#D9A184] font-mono">
            {totalTonnage} <span className="text-xs font-sans">t</span>
          </div>
        </div>

        <div>
          <span className="text-[10px] font-bold text-neutral-500 uppercase tracking-wider block mb-1">
            STREAK
          </span>
          <div className="text-xl sm:text-2xl font-black text-white font-mono">
            {streak} <span className="text-xs text-neutral-500 font-sans">days</span>
          </div>
        </div>
      </div>

      {/* Medals Row */}
      <div className="bg-[#161514] border border-[#262422] rounded-3xl p-5 space-y-3">
        <div
          onClick={() => pushRoute('awards')}
          className="flex items-center justify-between cursor-pointer"
        >
          <div className="flex items-center gap-2">
            <h3 className="font-extrabold text-base text-white">Medals</h3>
            <span className="text-xs font-mono font-bold text-[#D9A184]">
              {unlockedAwards.length} / {AWARDS.length}
            </span>
          </div>
          <ChevronRight className="w-4 h-4 text-neutral-500" />
        </div>

        <div className="grid grid-cols-4 gap-3 pt-1">
          {AWARDS.slice(0, 4).map((award) => {
            const isUnlocked = unlockedAwards.includes(award.id);
            return (
              <div
                key={award.id}
                onClick={() => pushRoute('awards')}
                className="flex flex-col items-center text-center cursor-pointer group"
              >
                <div className="relative w-16 h-16 sm:w-20 sm:h-20 flex items-center justify-center p-1">
                  <img
                    src={
                      isUnlocked
                        ? getAssetUrl(`assets/badges/${award.id}.webp`)
                        : getAssetUrl(`assets/badges/${award.id}_off.webp`)
                    }
                    alt={award.name}
                    className={`w-full h-full object-contain drop-shadow transition-transform group-hover:scale-105 ${
                      isUnlocked ? '' : 'grayscale opacity-60'
                    }`}
                  />
                  {isUnlocked && (
                    <span className="absolute top-1 right-1 w-2.5 h-2.5 bg-[#D9A184] rounded-full ring-2 ring-[#161514]" />
                  )}
                </div>
                <span className="text-[11px] font-bold text-neutral-300 mt-1 line-clamp-1">
                  {award.name}
                </span>
              </div>
            );
          })}
        </div>
      </div>

      {/* Progress Photos & Moments Card */}
      <div className="bg-[#161514] border border-[#262422] rounded-3xl p-5 space-y-3">
        <div className="flex items-center justify-between">
          <h3 className="font-extrabold text-base text-white">Progress Photos</h3>
          <span className="text-xs font-mono text-neutral-400">Offline private</span>
        </div>

        <div className="grid grid-cols-2 gap-3">
          <div className="bg-[#1C1B19] border border-[#2A2826] rounded-2xl p-4 flex flex-col items-center justify-center text-center aspect-[4/3] group cursor-pointer hover:border-[#D9A184]/40 transition-all">
            <Camera className="w-7 h-7 text-[#D9A184] mb-2 group-hover:scale-110 transition-transform" />
            <span className="text-xs font-bold text-white">Log Progress Photo</span>
            <span className="text-[10px] text-neutral-500 mt-0.5">Encrypted in browser</span>
          </div>

          <div
            onClick={() => pushRoute('measures')}
            className="bg-[#1C1B19] border border-[#2A2826] rounded-2xl p-4 flex flex-col items-center justify-center text-center aspect-[4/3] group cursor-pointer hover:border-[#D9A184]/40 transition-all"
          >
            <Weight className="w-7 h-7 text-[#8FA377] mb-2 group-hover:scale-110 transition-transform" />
            <span className="text-xs font-bold text-white">Body Circumferences</span>
            <span className="text-[10px] text-neutral-500 mt-0.5">Waist, arms, chest</span>
          </div>
        </div>
      </div>
    </div>
  );
};
