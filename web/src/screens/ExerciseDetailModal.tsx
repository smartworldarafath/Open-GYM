import React from 'react';
import { useGymStore } from '../store/useGymStore';
import { ExerciseArt } from '../components/ExerciseArt';
import {
  ChevronLeft,
  Star,
  Plus,
  Trophy,
  Dumbbell,
  CheckCircle2,
  Sparkles,
} from 'lucide-react';

export const ExerciseDetailModal: React.FC = () => {
  const {
    activeExerciseId,
    getExerciseById,
    favorites,
    toggleFavorite,
    session,
    addExerciseToCurrentSession,
    startWorkoutFromExercises,
    getPersonalRecord,
    popRoute,
    pushRoute,
    settings,
  } = useGymStore();

  const exercise = activeExerciseId ? getExerciseById(activeExerciseId) : undefined;
  if (!exercise) return null;

  const isFav = favorites[exercise.id];
  const pr = getPersonalRecord(exercise.id);

  const handleAddToWorkout = () => {
    if (session) {
      addExerciseToCurrentSession(exercise.id);
      pushRoute('session');
    } else {
      startWorkoutFromExercises([exercise.id], `${exercise.name} Workout`);
    }
  };

  return (
    <div className="space-y-4 pb-24 animate-in fade-in duration-200">
      {/* Top Header */}
      <div className="flex items-center justify-between">
        <button
          onClick={() => popRoute()}
          className="p-2 rounded-xl bg-[#1C1C1C] hover:bg-[#2B2B2B] text-neutral-300 transition-all flex items-center justify-center active:scale-95"
        >
          <ChevronLeft className="w-5 h-5" />
        </button>

        <h3 className="font-extrabold text-sm text-neutral-400 uppercase tracking-wider">
          Exercise Details
        </h3>

        <button
          onClick={() => toggleFavorite(exercise.id)}
          className={`p-2 rounded-xl bg-[#1C1C1C] hover:bg-[#2B2B2B] transition-colors ${
            isFav ? 'text-[#D9A184]' : 'text-neutral-500 hover:text-white'
          }`}
        >
          <Star className={`w-5 h-5 ${isFav ? 'fill-current' : ''}`} />
        </button>
      </div>

      {/* Hero Vector Art Card */}
      <div className="bg-[#181818] border border-[#2B2B2B] rounded-3xl p-4 shadow-xl flex flex-col items-center">
        <div className="w-full h-56 rounded-2xl overflow-hidden bg-[#121212] mb-3">
          <ExerciseArt slug={exercise.art} height={224} loop={true} />
        </div>

        <div className="text-center">
          <h2 className="text-2xl font-black text-white tracking-tight">{exercise.name}</h2>
          <div className="flex items-center justify-center gap-2 mt-1.5 flex-wrap">
            <span className="px-2.5 py-0.5 rounded-full text-xs font-bold bg-[#D9A184]/20 text-[#D9A184] border border-[#D9A184]/40">
              {exercise.primary}
            </span>
            <span className="px-2.5 py-0.5 rounded-full text-xs font-semibold bg-[#262626] text-neutral-300">
              {exercise.equipment}
            </span>
            <span className="px-2.5 py-0.5 rounded-full text-xs font-semibold bg-[#262626] text-neutral-300">
              {exercise.difficulty}
            </span>
          </div>
        </div>
      </div>

      {/* PR Card */}
      <div className="bg-[#181818] border border-[#2B2B2B] rounded-2xl p-4 flex items-center justify-between">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-amber-500/15 text-amber-400 flex items-center justify-center">
            <Trophy className="w-5 h-5" />
          </div>
          <div>
            <div className="text-xs font-bold text-neutral-400 uppercase tracking-wider">
              Personal Record
            </div>
            <div className="text-lg font-black text-white font-mono">
              {pr.maxWeight > 0 ? `${pr.maxWeight} ${settings.units}` : 'No Record Yet'}
            </div>
          </div>
        </div>

        {pr.maxOneRm > 0 && (
          <div className="text-right">
            <span className="text-[10px] text-neutral-500 block uppercase font-bold">Estimated 1RM</span>
            <span className="text-sm font-bold font-mono text-[#D9A184]">
              {pr.maxOneRm} {settings.units}
            </span>
          </div>
        )}
      </div>

      {/* Technique & Steps */}
      <div className="bg-[#181818] border border-[#2B2B2B] rounded-2xl p-4 space-y-3">
        <h4 className="text-xs font-extrabold text-neutral-300 uppercase tracking-wider">
          Step-by-Step Technique
        </h4>
        <div className="space-y-2 text-xs leading-relaxed text-neutral-300">
          {exercise.steps.map((step, idx) => (
            <div key={idx} className="flex gap-2.5 items-start">
              <span className="w-4 h-4 rounded-full bg-[#2B2B2B] text-neutral-400 text-[10px] font-bold flex items-center justify-center flex-shrink-0 mt-0.5 font-mono">
                {idx + 1}
              </span>
              <p>{step}</p>
            </div>
          ))}
        </div>
      </div>

      {/* Action Button */}
      <div className="pt-2">
        <button
          onClick={handleAddToWorkout}
          className="w-full py-4 rounded-2xl bg-[#D9A184] hover:bg-[#E5AC8F] text-[#140D09] font-black text-base flex items-center justify-center gap-2 shadow-xl shadow-[#D9A184]/20 active:scale-98 transition-all"
        >
          <Plus className="w-5 h-5 stroke-[2.5]" />
          {session ? 'Add to Current Workout' : 'Start Workout With This Exercise'}
        </button>
      </div>
    </div>
  );
};
