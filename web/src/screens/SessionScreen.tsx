import React, { useEffect, useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { ExerciseArt } from '../components/ExerciseArt';
import {
  Play,
  Pause,
  Plus,
  Trash2,
  Check,
  ChevronRight,
  Clock,
  Dumbbell,
  Sparkles,
  ArrowLeft,
  X,
  PlusCircle,
  Minus,
  CheckCircle2,
} from 'lucide-react';
import confetti from 'canvas-confetti';
import type { LoggedSession, SetKind } from '../types';

export const SessionScreen: React.FC = () => {
  const {
    session,
    tickSessionTimer,
    toggleSessionPause,
    setCurrentExerciseIndex,
    updateSet,
    toggleSetDone,
    addSetToExercise,
    removeSetFromExercise,
    removeExerciseFromSession,
    addExerciseToCurrentSession,
    adjustRestTime,
    skipRestTimer,
    allExercises,
    finishWorkout,
    discardWorkout,
    setRoute,
    settings,
  } = useGymStore();

  const [completedSummary, setCompletedSummary] = useState<LoggedSession | null>(null);
  const [showAddExerciseModal, setShowAddExerciseModal] = useState(false);
  const [exerciseSearch, setExerciseSearch] = useState('');

  // 1-second live workout timer
  useEffect(() => {
    if (!session || session.isPaused) return;
    const interval = setInterval(() => {
      tickSessionTimer();
    }, 1000);
    return () => clearInterval(interval);
  }, [session, session?.isPaused]);

  if (!session && !completedSummary) {
    return (
      <div className="max-w-md mx-auto flex flex-col items-center justify-center min-h-[60vh] text-center p-6 space-y-4">
        <Dumbbell className="w-12 h-12 text-neutral-600 animate-bounce" />
        <h3 className="text-lg font-bold text-white">No active workout session</h3>
        <p className="text-xs text-neutral-400 max-w-xs">
          Select muscles on the Body Map or pick a routine from the library to begin.
        </p>
        <button
          onClick={() => setRoute('train')}
          className="px-6 py-3 rounded-full bg-white text-[#140D09] font-black text-sm"
        >
          Go to Body Map
        </button>
      </div>
    );
  }

  // Format seconds to mm:ss or hh:mm:ss
  const formatTime = (sec: number) => {
    const h = Math.floor(sec / 3600);
    const m = Math.floor((sec % 3600) / 60);
    const s = sec % 60;
    if (h > 0) {
      return `${h}:${m < 10 ? '0' : ''}${m}:${s < 10 ? '0' : ''}${s}`;
    }
    return `${m}:${s < 10 ? '0' : ''}${s}`;
  };

  const handleFinish = () => {
    const finished = finishWorkout();
    if (finished) {
      setCompletedSummary(finished);
      try {
        confetti({
          particleCount: 120,
          spread: 80,
          origin: { y: 0.6 },
          colors: ['#D9A184', '#FFFFFF', '#8FA377', '#FFC168'],
        });
      } catch (_) {}
    }
  };

  // Celebration Screen
  if (completedSummary) {
    return (
      <div className="max-w-2xl mx-auto py-12 px-6 text-center space-y-6 animate-in zoom-in-95 duration-300">
        <div className="w-20 h-20 rounded-full bg-[#D9A184]/20 border border-[#D9A184]/40 flex items-center justify-center mx-auto shadow-2xl text-[#D9A184]">
          <Sparkles className="w-10 h-10 fill-current" />
        </div>
        <div>
          <h2 className="text-4xl font-black text-white tracking-tight">Workout Crushed!</h2>
          <p className="text-sm text-neutral-400 mt-1">
            {completedSummary.routineName || 'Training Session'} •{' '}
            {new Date(completedSummary.date).toLocaleDateString()}
          </p>
        </div>

        {/* Celebration Summary Card */}
        <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-2xl space-y-5 text-left">
          <div className="grid grid-cols-3 gap-3 text-center">
            <div className="p-4 bg-[#1C1A18] rounded-2xl">
              <span className="text-[10px] text-neutral-500 uppercase font-black tracking-wider block mb-1">
                DURATION
              </span>
              <span className="text-2xl font-black text-white font-mono">
                {formatTime(completedSummary.durationSec)}
              </span>
            </div>
            <div className="p-4 bg-[#1C1A18] rounded-2xl">
              <span className="text-[10px] text-neutral-500 uppercase font-black tracking-wider block mb-1">
                VOLUME
              </span>
              <span className="text-2xl font-black text-[#D9A184] font-mono">
                {completedSummary.volume >= 1000
                  ? `${(completedSummary.volume / 1000).toFixed(1)} t`
                  : `${Math.round(completedSummary.volume)} kg`}
              </span>
            </div>
            <div className="p-4 bg-[#1C1A18] rounded-2xl">
              <span className="text-[10px] text-neutral-500 uppercase font-black tracking-wider block mb-1">
                SETS DONE
              </span>
              <span className="text-2xl font-black text-white font-mono">
                {completedSummary.setCount}
              </span>
            </div>
          </div>

          <div className="space-y-2 pt-3 border-t border-[#242220]">
            <span className="text-xs font-bold text-neutral-400 uppercase tracking-wider block">
              Session Breakdown
            </span>
            <div className="space-y-2">
              {completedSummary.exercises.map((ex, i) => (
                <div
                  key={i}
                  className="flex justify-between items-center text-xs p-2.5 bg-[#1C1A18] rounded-xl"
                >
                  <span className="font-bold text-white">{ex.name}</span>
                  <span className="text-neutral-400 font-mono">
                    {ex.sets.length} sets •{' '}
                    {Math.max(0, ...ex.sets.map((s) => s.weight))} {settings.units}
                  </span>
                </div>
              ))}
            </div>
          </div>
        </div>

        <button
          onClick={() => {
            setCompletedSummary(null);
            setRoute('home');
          }}
          className="w-full max-w-sm mx-auto py-4 rounded-full bg-white hover:bg-neutral-100 text-[#140D09] font-black text-base shadow-2xl active:scale-98 transition-all"
        >
          Save & Return Home
        </button>
      </div>
    );
  }

  const currentExercise = session!.exercises[session!.currentExerciseIndex];
  const fullExerciseDef = currentExercise
    ? allExercises.find((e) => e.id === currentExercise.exerciseId)
    : undefined;

  // Calculate Rest Timer stats
  const restSecondsLeft = session!.restEndsAt
    ? Math.max(0, Math.ceil((session!.restEndsAt - Date.now()) / 1000))
    : 0;

  const totalSetsDone = session!.exercises.reduce(
    (acc, ex) => acc + ex.sets.filter((s) => s.done).length,
    0
  );
  const totalSetsPlanned = session!.exercises.reduce((acc, ex) => acc + ex.sets.length, 0);

  return (
    <div className="max-w-6xl mx-auto space-y-6 pb-20 animate-in fade-in duration-200">
      {/* Top Session Bar (As seen in 04-session.png) */}
      <div className="bg-[#161514] border border-[#262422] rounded-[24px] p-4 flex items-center justify-between shadow-xl">
        <div className="flex items-center gap-3">
          <div className="flex items-center gap-2">
            <span className="w-2.5 h-2.5 rounded-full bg-emerald-400 animate-pulse" />
            <span className="text-xs font-black tracking-wider uppercase text-neutral-300">
              IN PROGRESS
            </span>
          </div>
          <span className="text-neutral-600 font-mono">|</span>
          <span className="font-mono text-xl font-black text-white">
            {formatTime(session!.elapsedSeconds)}
          </span>
        </div>

        <div className="flex items-center gap-2">
          {/* Pause / Resume */}
          <button
            onClick={toggleSessionPause}
            className={`p-2.5 rounded-xl border transition-all active:scale-95 ${
              session!.isPaused
                ? 'bg-amber-500/20 border-amber-500/40 text-amber-400'
                : 'bg-[#22201E] border-[#302C28] text-neutral-300 hover:text-white'
            }`}
            title={session!.isPaused ? 'Resume' : 'Pause'}
          >
            {session!.isPaused ? <Play className="w-4 h-4 fill-current" /> : <Pause className="w-4 h-4" />}
          </button>

          {/* Finish Button */}
          <button
            onClick={handleFinish}
            className="px-5 py-2.5 rounded-full bg-white hover:bg-neutral-100 text-[#140D09] font-black text-xs flex items-center gap-1.5 shadow active:scale-95 transition-all"
          >
            <Check className="w-4 h-4 stroke-[3]" />
            Finish Workout
          </button>

          {/* Discard Button */}
          <button
            onClick={() => {
              if (confirm('Discard this workout? Data will not be saved.')) {
                discardWorkout();
              }
            }}
            className="p-2.5 rounded-xl bg-[#22201E] hover:bg-red-950/40 border border-[#302C28] text-neutral-400 hover:text-red-400 transition-colors"
            title="Discard Workout"
          >
            <Trash2 className="w-4 h-4" />
          </button>
        </div>
      </div>

      {/* Exercises Navigation Tabs Strip */}
      <div className="flex items-center gap-2 overflow-x-auto pb-1 scrollbar-none">
        {session!.exercises.map((ex, idx) => {
          const isCurrent = idx === session!.currentExerciseIndex;
          const completedCount = ex.sets.filter((s) => s.done).length;
          return (
            <button
              key={ex.id}
              onClick={() => setCurrentExerciseIndex(idx)}
              className={`px-4 py-2.5 rounded-2xl font-bold text-xs whitespace-nowrap transition-all flex items-center gap-2 ${
                isCurrent
                  ? 'bg-white text-[#140D09] shadow-lg font-black'
                  : 'bg-[#161514] border border-[#262422] text-neutral-400 hover:text-white'
              }`}
            >
              <span>{ex.name}</span>
              <span
                className={`text-[10px] px-2 py-0.5 rounded-full font-mono font-bold ${
                  isCurrent ? 'bg-[#140D09]/15 text-[#140D09]' : 'bg-[#22201E] text-neutral-400'
                }`}
              >
                {completedCount}/{ex.sets.length}
              </span>
            </button>
          );
        })}

        <button
          onClick={() => setShowAddExerciseModal(true)}
          className="px-3 py-2 rounded-2xl bg-[#1C1A18] border border-dashed border-[#383430] text-neutral-400 hover:text-white flex items-center gap-1.5 text-xs font-bold whitespace-nowrap active:scale-95 transition-all"
        >
          <Plus className="w-4 h-4 text-[#D9A184]" />
          Add Exercise
        </button>
      </div>

      {/* Main 2-Column Desktop Grid for Current Exercise */}
      {currentExercise && (
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-start">
          {/* Left Column: Visual Vector Animation & Rest Timer Banner (As in 04-session.png) */}
          <div className="lg:col-span-5 space-y-4">
            <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
              <div>
                <div className="flex items-center justify-between mb-1">
                  <span className="text-[10px] font-extrabold text-[#D9A184] uppercase tracking-wider">
                    EXERCISE {session!.currentExerciseIndex + 1} OF {session!.exercises.length}
                  </span>
                  <span className="text-xs text-neutral-400 font-bold uppercase">
                    {currentExercise.primary}
                  </span>
                </div>
                <h3 className="text-2xl font-black text-white tracking-tight">
                  {currentExercise.name}
                </h3>
              </div>

              {/* Vector Art Animation Loop */}
              {fullExerciseDef?.art && (
                <div className="h-56 rounded-2xl overflow-hidden bg-[#100F0E] flex items-center justify-center p-3 border border-[#22201E]">
                  <ExerciseArt slug={fullExerciseDef.art} height={200} loop={true} />
                </div>
              )}

              {/* Rest Timer Banner (As seen in 04-session.png) */}
              <div className="bg-[#1C1A18] border border-[#2A2724] rounded-2xl p-4 space-y-3">
                <div className="flex items-center justify-between">
                  <button
                    onClick={() => adjustRestTime(-15)}
                    className="px-3 py-1.5 rounded-xl bg-[#262320] hover:bg-[#302D29] text-xs font-bold text-neutral-300 active:scale-95"
                  >
                    -15
                  </button>
                  <span className="text-[10px] font-black tracking-widest uppercase text-neutral-400">
                    {restSecondsLeft > 0 ? 'RESTING' : 'REST CLOCK'}
                  </span>
                  <button
                    onClick={() => adjustRestTime(15)}
                    className="px-3 py-1.5 rounded-xl bg-[#262320] hover:bg-[#302D29] text-xs font-bold text-neutral-300 active:scale-95"
                  >
                    +15
                  </button>
                </div>

                {/* Barcode-style ticks */}
                <div className="flex items-center justify-center gap-1 opacity-70 py-1">
                  {Array.from({ length: 28 }).map((_, i) => (
                    <div
                      key={i}
                      className={`w-1 rounded-full transition-all ${
                        restSecondsLeft > 0
                          ? i % 2 === 0
                            ? 'h-5 bg-[#D9A184]'
                            : 'h-3 bg-[#8FA377]'
                          : 'h-2 bg-[#333]'
                      }`}
                    />
                  ))}
                </div>

                {/* Rest Counters */}
                <div className="grid grid-cols-3 items-center text-center pt-1">
                  <div>
                    <span className="text-[10px] text-neutral-500 font-bold uppercase block">
                      ELAPSED
                    </span>
                    <span className="text-xs font-mono font-bold text-white">
                      {formatTime(session!.elapsedSeconds)}
                    </span>
                  </div>

                  <div
                    onClick={skipRestTimer}
                    className="cursor-pointer hover:opacity-80 transition-opacity"
                    title="Tap to skip rest"
                  >
                    <span className="text-2xl font-black text-white font-mono">
                      {restSecondsLeft > 0 ? formatTime(restSecondsLeft) : '0:00'}
                    </span>
                    <span className="text-[9px] text-[#D9A184] font-bold uppercase block mt-0.5">
                      TAP TO SKIP
                    </span>
                  </div>

                  <div>
                    <span className="text-[10px] text-neutral-500 font-bold uppercase block">
                      SETS
                    </span>
                    <span className="text-xs font-mono font-bold text-white">
                      {totalSetsDone}/{totalSetsPlanned}
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* Right Column: Sets Table (As in 04-session.png) */}
          <div className="lg:col-span-7 bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
            <div className="flex items-center justify-between">
              <h3 className="text-sm font-black text-white uppercase tracking-wider">
                Logged Sets
              </h3>
              <button
                onClick={() => removeExerciseFromSession(session!.currentExerciseIndex)}
                className="text-xs font-bold text-neutral-500 hover:text-red-400 flex items-center gap-1 transition-colors"
              >
                <Trash2 className="w-3.5 h-3.5" /> Remove Exercise
              </button>
            </div>

            {/* Sets Header Table */}
            <div className="space-y-2">
              <div className="grid grid-cols-12 gap-2 text-xs font-extrabold text-neutral-400 px-3 uppercase tracking-wider">
                <span className="col-span-1">#</span>
                <span className="col-span-5 text-center">REPS</span>
                <span className="col-span-5 text-center">WEIGHT ({settings.units.toUpperCase()})</span>
                <span className="col-span-1 text-center">DONE</span>
              </div>

              {/* Set Rows */}
              {currentExercise.sets.map((set, sIdx) => (
                <div
                  key={set.id}
                  className={`grid grid-cols-12 gap-2 items-center p-3 rounded-2xl border transition-all ${
                    set.done
                      ? 'bg-[#1C201C] border-[#2A3B2A] text-white'
                      : 'bg-[#1C1A18] border-[#2B2724] text-white'
                  }`}
                >
                  {/* Set Index */}
                  <div className="col-span-1 font-mono font-black text-base text-neutral-400">
                    {sIdx + 1}
                  </div>

                  {/* Reps Controller (- 8 +) */}
                  <div className="col-span-5 flex items-center justify-center gap-2 bg-[#121110] border border-[#262422] rounded-xl px-2 py-1.5">
                    <button
                      onClick={() =>
                        updateSet(session!.currentExerciseIndex, sIdx, {
                          reps: Math.max(1, set.reps - 1),
                        })
                      }
                      className="p-1 rounded-lg text-neutral-400 hover:text-white hover:bg-[#202020] active:scale-95"
                    >
                      <Minus className="w-3.5 h-3.5" />
                    </button>
                    <input
                      type="number"
                      value={set.reps || ''}
                      onChange={(e) =>
                        updateSet(session!.currentExerciseIndex, sIdx, {
                          reps: parseInt(e.target.value) || 0,
                        })
                      }
                      className="w-12 text-center font-mono font-black text-base bg-transparent text-white focus:outline-none"
                    />
                    <button
                      onClick={() =>
                        updateSet(session!.currentExerciseIndex, sIdx, {
                          reps: set.reps + 1,
                        })
                      }
                      className="p-1 rounded-lg text-neutral-400 hover:text-white hover:bg-[#202020] active:scale-95"
                    >
                      <Plus className="w-3.5 h-3.5" />
                    </button>
                  </div>

                  {/* Weight Controller (- 90 +) */}
                  <div className="col-span-5 flex items-center justify-center gap-2 bg-[#121110] border border-[#262422] rounded-xl px-2 py-1.5">
                    <button
                      onClick={() =>
                        updateSet(session!.currentExerciseIndex, sIdx, {
                          weight: Math.max(0, set.weight - (settings.units === 'kg' ? 2.5 : 5)),
                        })
                      }
                      className="p-1 rounded-lg text-neutral-400 hover:text-white hover:bg-[#202020] active:scale-95"
                    >
                      <Minus className="w-3.5 h-3.5" />
                    </button>
                    <input
                      type="number"
                      step="2.5"
                      value={set.weight || ''}
                      onChange={(e) =>
                        updateSet(session!.currentExerciseIndex, sIdx, {
                          weight: parseFloat(e.target.value) || 0,
                        })
                      }
                      className="w-16 text-center font-mono font-black text-base bg-transparent text-white focus:outline-none"
                    />
                    <button
                      onClick={() =>
                        updateSet(session!.currentExerciseIndex, sIdx, {
                          weight: set.weight + (settings.units === 'kg' ? 2.5 : 5),
                        })
                      }
                      className="p-1 rounded-lg text-neutral-400 hover:text-white hover:bg-[#202020] active:scale-95"
                    >
                      <Plus className="w-3.5 h-3.5" />
                    </button>
                  </div>

                  {/* Done Tick Checkbox */}
                  <div className="col-span-1 flex justify-center">
                    <button
                      onClick={() => toggleSetDone(session!.currentExerciseIndex, sIdx)}
                      className={`w-9 h-9 rounded-xl flex items-center justify-center transition-all active:scale-90 ${
                        set.done
                          ? 'bg-[#73A373] text-[#0E1A0E] shadow-lg shadow-[#73A373]/30'
                          : 'bg-[#262422] border border-[#3A3632] text-neutral-500 hover:text-white'
                      }`}
                    >
                      <Check className="w-4 h-4 stroke-[3]" />
                    </button>
                  </div>
                </div>
              ))}
            </div>

            {/* Set Management Actions */}
            <div className="pt-2 flex items-center justify-between">
              <button
                onClick={() => addSetToExercise(session!.currentExerciseIndex)}
                className="px-4 py-2.5 rounded-xl bg-[#201D1B] hover:bg-[#2A2724] border border-[#332E2A] text-neutral-200 font-bold text-xs flex items-center gap-1.5 active:scale-95 transition-all"
              >
                <Plus className="w-4 h-4 text-[#D9A184]" />
                Add Set
              </button>

              {currentExercise.sets.length > 1 && (
                <button
                  onClick={() =>
                    removeSetFromExercise(
                      session!.currentExerciseIndex,
                      currentExercise.sets.length - 1
                    )
                  }
                  className="px-3 py-2 text-xs font-semibold text-neutral-500 hover:text-red-400 transition-colors"
                >
                  Remove Last Set
                </button>
              )}
            </div>
          </div>
        </div>
      )}

      {/* Add Exercise Modal */}
      {showAddExerciseModal && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#181615] border border-[#2B2826] rounded-3xl w-full max-w-lg max-h-[80vh] flex flex-col overflow-hidden animate-in zoom-in-95 duration-200">
            <div className="p-4 border-b border-[#282523] flex items-center justify-between">
              <h3 className="font-extrabold text-white text-base">Add Exercise to Workout</h3>
              <button
                onClick={() => setShowAddExerciseModal(false)}
                className="p-1 rounded-lg text-neutral-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="p-4">
              <input
                type="text"
                value={exerciseSearch}
                onChange={(e) => setExerciseSearch(e.target.value)}
                placeholder="Search 552 exercises..."
                className="w-full bg-[#121110] border border-[#282523] rounded-xl px-3 py-2 text-sm text-white placeholder-neutral-500 focus:outline-none focus:border-[#D9A184]"
              />
            </div>

            <div className="flex-1 overflow-y-auto p-4 space-y-2">
              {allExercises
                .filter(
                  (e) =>
                    !exerciseSearch ||
                    e.name.toLowerCase().includes(exerciseSearch.toLowerCase()) ||
                    e.primary.toLowerCase().includes(exerciseSearch.toLowerCase())
                )
                .slice(0, 40)
                .map((ex) => (
                  <div
                    key={ex.id}
                    onClick={() => {
                      addExerciseToCurrentSession(ex.id);
                      setShowAddExerciseModal(false);
                      setExerciseSearch('');
                    }}
                    className="p-3 rounded-2xl hover:bg-[#221F1D] border border-[#242220] hover:border-[#D9A184]/40 cursor-pointer flex items-center justify-between text-white transition-all"
                  >
                    <div>
                      <div className="font-bold text-sm">{ex.name}</div>
                      <div className="text-[11px] text-neutral-400 capitalize mt-0.5">
                        {ex.primary} • {ex.equipment}
                      </div>
                    </div>
                    <PlusCircle className="w-5 h-5 text-[#D9A184]" />
                  </div>
                ))}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
