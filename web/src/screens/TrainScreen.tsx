import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { BodyMap } from '../components/BodyMap';
import { MUSCLES } from '../types';
import { Play, Check, ArrowRight, RotateCcw, Dumbbell, Sparkles } from 'lucide-react';

export const TrainScreen: React.FC = () => {
  const {
    selectedMuscles,
    toggleMuscle,
    clearSelectedMuscles,
    allExercises,
    startWorkoutFromExercises,
    startEmptyWorkout,
  } = useGymStore();

  const [step, setStep] = useState<'select' | 'review'>('select');
  const [picks, setPicks] = useState<string[]>([]);

  // Filter exercises matching selected muscles
  const matchedExercises = allExercises.filter(
    (e) =>
      selectedMuscles.includes(e.primary) ||
      e.secondary.some((s) => selectedMuscles.includes(s))
  );

  const handleContinueToReview = () => {
    if (selectedMuscles.length === 0) return;
    const initialPicks = matchedExercises.slice(0, 6).map((e) => e.id);
    setPicks(initialPicks);
    setStep('review');
  };

  const togglePick = (id: string) => {
    if (picks.includes(id)) {
      setPicks(picks.filter((p) => p !== id));
    } else {
      setPicks([...picks, id]);
    }
  };

  const handleStartWorkout = () => {
    if (picks.length === 0) return;
    startWorkoutFromExercises(
      picks,
      `${selectedMuscles.map((m) => m.toUpperCase()).join(' & ')} Workout`
    );
  };

  return (
    <div className="max-w-6xl mx-auto space-y-6 pb-20 animate-in fade-in duration-200">
      {step === 'select' ? (
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-start">
          {/* Left Column: Anatomical Body Map (As seen in 03-train.png) */}
          <div className="lg:col-span-7 bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-2xl flex flex-col items-center">
            <div className="w-full flex items-center justify-between mb-4">
              <div>
                <span className="text-[10px] font-black tracking-widest uppercase text-neutral-400">
                  STEP 1 OF 2
                </span>
                <h2 className="text-2xl sm:text-3xl font-black text-white tracking-tight">
                  CHOOSE YOUR FOCUS
                </h2>
              </div>

              {selectedMuscles.length > 0 && (
                <button
                  onClick={clearSelectedMuscles}
                  className="px-3 py-1.5 rounded-xl bg-[#22201E] hover:bg-[#2C2825] text-xs font-bold text-neutral-300 flex items-center gap-1.5 active:scale-95 transition-all"
                >
                  <RotateCcw className="w-3.5 h-3.5" />
                  Reset
                </button>
              )}
            </div>

            {/* Interactive Anatomical SVG Silhouette */}
            <div className="w-full flex justify-center py-2">
              <BodyMap
                selectedMuscles={selectedMuscles}
                onToggleMuscle={toggleMuscle}
                mode="select"
                className="w-full max-w-lg"
              />
            </div>

            <p className="text-xs text-neutral-400 mt-2 text-center font-medium">
              Tap the muscles you want to train — front and back.
            </p>
          </div>

          {/* Right Column: Muscle Chips & Session Launcher */}
          <div className="lg:col-span-5 space-y-5">
            {/* Selected Focus Panel */}
            <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
              <div className="flex items-center justify-between">
                <h3 className="text-sm font-extrabold text-white uppercase tracking-wider">
                  Targeted Muscles ({selectedMuscles.length})
                </h3>
                {selectedMuscles.length > 0 && (
                  <span className="text-xs font-bold font-mono text-[#D9A184]">
                    {matchedExercises.length} catalog matches
                  </span>
                )}
              </div>

              {/* Selected Chips */}
              {selectedMuscles.length > 0 ? (
                <div className="flex flex-wrap gap-2">
                  {selectedMuscles.map((m) => (
                    <span
                      key={m}
                      onClick={() => toggleMuscle(m)}
                      className="px-3.5 py-1.5 rounded-xl text-xs font-black bg-[#28221D] border border-[#D9A184]/50 text-[#D9A184] cursor-pointer hover:bg-[#332A23] transition-all flex items-center gap-1.5"
                    >
                      {m.toUpperCase()}
                      <span className="opacity-70">✕</span>
                    </span>
                  ))}
                </div>
              ) : (
                <p className="text-xs text-neutral-500 italic">
                  Tap muscles on the anatomical figure to pick target muscle groups.
                </p>
              )}

              {/* Quick Muscle Selector Pills */}
              <div className="pt-2 border-t border-[#242220]">
                <span className="text-[11px] font-bold text-neutral-400 uppercase tracking-wider block mb-2">
                  Quick Muscle Tags
                </span>
                <div className="flex flex-wrap gap-1.5">
                  {MUSCLES.map((m) => {
                    const isSelected = selectedMuscles.includes(m.id);
                    return (
                      <button
                        key={m.id}
                        onClick={() => toggleMuscle(m.id)}
                        className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all active:scale-95 ${
                          isSelected
                            ? 'bg-[#D9A184] text-[#140D09] shadow-md shadow-[#D9A184]/20'
                            : 'bg-[#1C1A18] text-neutral-400 hover:text-white border border-[#262422]'
                        }`}
                      >
                        {m.label}
                      </button>
                    );
                  })}
                </div>
              </div>

              {/* Action Buttons */}
              <div className="pt-3 space-y-2.5">
                <button
                  onClick={handleContinueToReview}
                  disabled={selectedMuscles.length === 0}
                  className={`w-full py-4 rounded-full font-black text-sm flex items-center justify-center gap-2 transition-all ${
                    selectedMuscles.length > 0
                      ? 'bg-white hover:bg-neutral-100 text-[#140D09] shadow-xl active:scale-98 cursor-pointer'
                      : 'bg-[#22201E] text-neutral-600 border border-[#2E2C2A] cursor-not-allowed'
                  }`}
                >
                  <span>Continue</span>
                  <ArrowRight className="w-4 h-4" />
                </button>

                <button
                  onClick={startEmptyWorkout}
                  className="w-full py-3 rounded-full bg-[#1C1A18] hover:bg-[#262422] text-neutral-300 font-bold text-xs border border-[#2E2C2A] active:scale-98 transition-all"
                >
                  Start Empty Workout Without Focus
                </button>
              </div>
            </div>
          </div>
        </div>
      ) : (
        /* STEP 2: REVIEW SESSION */
        <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-2xl space-y-6">
          <div className="flex items-center justify-between pb-4 border-b border-[#242220]">
            <div>
              <span className="text-[10px] font-black tracking-widest uppercase text-neutral-400">
                STEP 2 OF 2
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-white tracking-tight">
                REVIEW SESSION
              </h2>
              <p className="text-xs text-neutral-400 mt-1">
                {picks.length} exercises selected for {selectedMuscles.map((m) => m.toUpperCase()).join(', ')}
              </p>
            </div>
            <button
              onClick={() => setStep('select')}
              className="text-xs font-bold text-[#D9A184] hover:underline"
            >
              ← Back to Map
            </button>
          </div>

          {/* Exercise Picks Grid */}
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3 max-h-[60vh] overflow-y-auto pr-1">
            {matchedExercises.map((ex) => {
              const isChecked = picks.includes(ex.id);
              return (
                <div
                  key={ex.id}
                  onClick={() => togglePick(ex.id)}
                  className={`p-4 rounded-2xl border transition-all cursor-pointer flex items-center justify-between ${
                    isChecked
                      ? 'bg-[#221C18] border-[#D9A184]/50 text-white shadow-md'
                      : 'bg-[#181615] border-[#262422] text-neutral-400 opacity-60 hover:opacity-90'
                  }`}
                >
                  <div className="flex items-center gap-3">
                    <div
                      className={`w-6 h-6 rounded-lg flex items-center justify-center transition-colors ${
                        isChecked ? 'bg-[#D9A184] text-[#140D09]' : 'border border-[#3E3E3E]'
                      }`}
                    >
                      {isChecked && <Check className="w-4 h-4 stroke-[3]" />}
                    </div>
                    <div>
                      <div className="text-sm font-bold text-white leading-tight">{ex.name}</div>
                      <div className="text-[11px] text-neutral-400 mt-0.5">
                        <span className="text-[#D9A184] uppercase font-bold">{ex.primary}</span> •{' '}
                        {ex.equipment}
                      </div>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="pt-2">
            <button
              onClick={handleStartWorkout}
              disabled={picks.length === 0}
              className="w-full py-4 rounded-full bg-white hover:bg-neutral-100 text-[#140D09] font-black text-base flex items-center justify-center gap-2 shadow-2xl active:scale-98 transition-all"
            >
              <Play className="w-5 h-5 fill-current" />
              Start Workout ({picks.length} Exercises)
            </button>
          </div>
        </div>
      )}
    </div>
  );
};
