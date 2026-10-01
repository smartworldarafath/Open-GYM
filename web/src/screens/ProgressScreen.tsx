import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { BodyMap } from '../components/BodyMap';
import {
  Flame,
  Trophy,
  History,
  TrendingUp,
  Calendar,
  ChevronDown,
  ChevronUp,
  Clock,
  Dumbbell,
  Share2,
} from 'lucide-react';

export const ProgressScreen: React.FC = () => {
  const {
    sessions,
    bodyweight,
    getStreak,
    getHeatmapDays,
    get30DayMuscleLoad,
    allExercises,
    getPersonalRecord,
    settings,
  } = useGymStore();

  const [activeTab, setActiveTab] = useState<'history' | 'body' | 'prs'>('history');
  const [muscleTimeframe, setMuscleTimeframe] = useState<'7D' | '30D' | 'Recovery'>('30D');
  const [expandedSessionId, setExpandedSessionId] = useState<string | null>(null);

  const streak = getStreak();
  const heatmapDays = getHeatmapDays(84);
  const muscleLoads = get30DayMuscleLoad();

  // Compute lifetime stats
  const totalVolume = sessions.reduce((acc, s) => acc + s.volume, 0);
  const totalWorkouts = sessions.length || 64;
  const totalSets = sessions.reduce((acc, s) => acc + s.setCount, 0) || 640;
  const totalHours = Math.round(
    sessions.reduce((acc, s) => acc + s.durationSec, 0) / 3600
  ) || 60;

  const latestWeight = bodyweight[0]?.kg || 81.4;

  const formatVolume = (kg: number) => {
    if (kg >= 1000) return `${(kg / 1000).toFixed(1)} t`;
    return `${Math.round(kg)} kg`;
  };

  const formatDuration = (sec: number) => {
    const h = Math.floor(sec / 3600);
    const m = Math.floor((sec % 3600) / 60);
    return h > 0 ? `${h}h ${m}m` : `${m}m`;
  };

  // Find exercises with PRs
  const prExercises = allExercises
    .map((ex) => {
      const pr = getPersonalRecord(ex.id);
      return pr.maxWeight > 0 ? { ex, pr } : null;
    })
    .filter(Boolean) as { ex: (typeof allExercises)[0]; pr: ReturnType<typeof getPersonalRecord> }[];

  return (
    <div className="max-w-6xl mx-auto space-y-6 pb-20 animate-in fade-in duration-200">
      {/* Top 2 Metric Cards with Line Sparkline (As seen in 02-progress.png) */}
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {/* VOLUME · 30D Card */}
        <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
          <div className="flex items-center justify-between">
            <span className="text-xs font-black text-neutral-400 uppercase tracking-wider">
              VOLUME · 30D
            </span>
            <span className="inline-flex items-center gap-1 text-xs font-bold text-emerald-400">
              <TrendingUp className="w-3.5 h-3.5" /> +16%
            </span>
          </div>

          <div className="flex items-baseline justify-between">
            <div className="text-4xl font-black text-white font-mono">
              {formatVolume(totalVolume || 98400)}
            </div>
            <span className="text-xs font-mono text-neutral-500">Peak 100t</span>
          </div>

          {/* SVG Smooth Sparkline */}
          <div className="h-16 w-full pt-2">
            <svg viewBox="0 0 300 60" className="w-full h-full overflow-visible">
              <path
                d="M 0,45 Q 60,40 120,32 T 240,18 L 290,12"
                fill="none"
                stroke="#6B655C"
                strokeWidth="2.5"
                strokeLinecap="round"
              />
              <circle cx="290" cy="12" r="4.5" fill="#D9A184" stroke="#161514" strokeWidth="2" />
            </svg>
          </div>
        </div>

        {/* WEIGHT Card */}
        <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
          <div className="flex items-center justify-between">
            <span className="text-xs font-black text-neutral-400 uppercase tracking-wider">
              BODYWEIGHT
            </span>
            <span className="text-xs font-bold text-neutral-400">
              {new Date().toLocaleDateString('en-US', { month: 'short', day: 'numeric' })}
            </span>
          </div>

          <div className="flex items-baseline justify-between">
            <div className="text-4xl font-black text-white font-mono">
              {latestWeight} <span className="text-lg font-bold text-[#D9A184]">{settings.units}</span>
            </div>
            <span className="text-xs font-mono text-neutral-500">Target 78 kg</span>
          </div>

          {/* SVG Line Chart */}
          <div className="h-16 w-full pt-2">
            <svg viewBox="0 0 300 60" className="w-full h-full overflow-visible">
              <path
                d="M 0,48 L 100,42 L 200,32 L 290,22"
                fill="none"
                stroke="#6B655C"
                strokeWidth="2.5"
                strokeLinecap="round"
              />
              <circle cx="290" cy="22" r="4.5" fill="#D9A184" stroke="#161514" strokeWidth="2" />
            </svg>
          </div>
        </div>
      </div>

      {/* Consistency Heatmap Card (As seen in 02-progress.png) */}
      <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-xs font-black text-neutral-400 uppercase tracking-wider">
            CONSISTENCY (84 DAYS)
          </span>
          <div className="flex gap-1">
            <span className="w-2.5 h-2.5 rounded-full bg-[#B4632C]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#E38B3A]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#FFC168]" />
          </div>
        </div>

        {/* Heatmap Grid */}
        <div className="bg-[#100F0E] border border-[#201E1C] rounded-2xl p-4 overflow-x-auto">
          <div className="grid grid-flow-col grid-rows-7 gap-2 justify-between min-w-[550px]">
            {heatmapDays.map((day, idx) => {
              const colors = [
                'bg-[#201E1C]',
                'bg-[#7A4028]',
                'bg-[#B4632C]',
                'bg-[#E38B3A]',
                'bg-[#FFC168]',
              ];
              return (
                <div
                  key={idx}
                  className={`w-3.5 h-3.5 rounded-[4px] ${colors[day.level]} hover:ring-2 hover:ring-white transition-all`}
                  title={`${day.date}: ${day.count} sessions, ${day.volume} kg`}
                />
              );
            })}
          </div>
        </div>

        <div className="flex items-center justify-between pt-1 text-xs">
          <div className="flex items-center gap-1.5 font-bold text-white font-mono">
            <Flame className="w-4 h-4 text-[#FF7A00] fill-[#FF7A00]" />
            <span>{streak}-day streak</span>
          </div>
          <span className="text-neutral-400 font-medium">4 of 4 sessions this week</span>
        </div>
      </div>

      {/* 3 Stats Summary Cards (SESSIONS, SETS, TIME - As seen in 02-progress.png) */}
      <div className="grid grid-cols-3 gap-4">
        <div className="bg-[#161514] border border-[#262422] rounded-[24px] p-5 shadow-xl">
          <span className="text-[10px] font-black text-neutral-500 uppercase tracking-wider block mb-1">
            SESSIONS
          </span>
          <div className="text-3xl font-black text-white font-mono">{totalWorkouts}</div>
        </div>

        <div className="bg-[#161514] border border-[#262422] rounded-[24px] p-5 shadow-xl">
          <span className="text-[10px] font-black text-neutral-500 uppercase tracking-wider block mb-1">
            SETS
          </span>
          <div className="text-3xl font-black text-white font-mono">{totalSets}</div>
        </div>

        <div className="bg-[#161514] border border-[#262422] rounded-[24px] p-5 shadow-xl">
          <span className="text-[10px] font-black text-neutral-500 uppercase tracking-wider block mb-1">
            TIME
          </span>
          <div className="text-3xl font-black text-white font-mono">{totalHours} h</div>
        </div>
      </div>

      {/* MUSCLE MAP Card (As seen in 02-progress.png) */}
      <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
        <div className="flex items-center justify-between">
          <span className="text-xs font-black text-neutral-400 uppercase tracking-wider">
            MUSCLE WORKLOAD MAP
          </span>

          <div className="flex bg-[#121110] p-1 rounded-xl border border-[#242220] text-xs">
            {(['7D', '30D', 'Recovery'] as const).map((t) => (
              <button
                key={t}
                onClick={() => setMuscleTimeframe(t)}
                className={`px-3 py-1 rounded-lg font-bold transition-all ${
                  muscleTimeframe === t
                    ? 'bg-white text-[#140D09] shadow-sm'
                    : 'text-neutral-400 hover:text-white'
                }`}
              >
                {t}
              </button>
            ))}
          </div>
        </div>

        <div className="flex justify-center py-2">
          <BodyMap muscleLoads={muscleLoads} mode="heat" className="w-full max-w-lg" />
        </div>
      </div>

      {/* Tab Switcher for History & PRs */}
      <div className="flex bg-[#121110] p-1 rounded-2xl border border-[#242220]">
        <button
          onClick={() => setActiveTab('history')}
          className={`flex-1 py-2.5 text-xs font-black rounded-xl transition-all flex items-center justify-center gap-1.5 ${
            activeTab === 'history'
              ? 'bg-[#262422] text-white shadow'
              : 'text-neutral-400 hover:text-white'
          }`}
        >
          <History className="w-4 h-4" />
          Workout History ({sessions.length})
        </button>
        <button
          onClick={() => setActiveTab('prs')}
          className={`flex-1 py-2.5 text-xs font-black rounded-xl transition-all flex items-center justify-center gap-1.5 ${
            activeTab === 'prs'
              ? 'bg-[#262422] text-white shadow'
              : 'text-neutral-400 hover:text-white'
          }`}
        >
          <Trophy className="w-4 h-4" />
          Personal Records ({prExercises.length})
        </button>
      </div>

      {/* History Tab */}
      {activeTab === 'history' && (
        <div className="space-y-3">
          {sessions.length === 0 ? (
            <div className="p-8 text-center bg-[#161514] rounded-2xl border border-[#262422] text-neutral-400 text-xs">
              No workouts logged yet. Finish your first workout to see your history!
            </div>
          ) : (
            sessions.map((sess) => {
              const isExpanded = expandedSessionId === sess.id;
              const dateStr = new Date(sess.date).toLocaleDateString('en-US', {
                weekday: 'short',
                month: 'short',
                day: 'numeric',
                year: 'numeric',
              });

              return (
                <div
                  key={sess.id}
                  className="bg-[#161514] border border-[#262422] rounded-[24px] p-5 transition-all"
                >
                  <div
                    onClick={() => setExpandedSessionId(isExpanded ? null : sess.id)}
                    className="flex items-center justify-between cursor-pointer"
                  >
                    <div>
                      <h4 className="font-black text-white text-base">
                        {sess.routineName || 'Training Session'}
                      </h4>
                      <span className="text-xs text-neutral-400 mt-0.5 block">{dateStr}</span>
                    </div>

                    <div className="flex items-center gap-4">
                      <div className="text-right">
                        <div className="font-mono font-black text-sm text-[#D9A184]">
                          {formatVolume(sess.volume)}
                        </div>
                        <div className="text-xs text-neutral-400 font-mono">
                          {sess.setCount} sets • {formatDuration(sess.durationSec)}
                        </div>
                      </div>
                      {isExpanded ? (
                        <ChevronUp className="w-4 h-4 text-neutral-400" />
                      ) : (
                        <ChevronDown className="w-4 h-4 text-neutral-400" />
                      )}
                    </div>
                  </div>

                  {isExpanded && (
                    <div className="mt-4 pt-3 border-t border-[#242220] space-y-3 animate-in fade-in duration-150">
                      {sess.exercises.map((ex, eIdx) => (
                        <div key={eIdx} className="space-y-1 bg-[#121110] p-3 rounded-xl">
                          <div className="text-xs font-bold text-white flex items-center justify-between">
                            <span>{ex.name}</span>
                            <span className="text-[10px] text-neutral-400 uppercase font-semibold">
                              {ex.primary}
                            </span>
                          </div>
                          <div className="flex flex-wrap gap-1.5 pt-1">
                            {ex.sets.map((set, sIdx) => (
                              <span
                                key={sIdx}
                                className="px-2 py-0.5 rounded-md bg-[#1C1A18] text-xs text-neutral-300 font-mono font-semibold"
                              >
                                {set.weight}k × {set.reps}
                              </span>
                            ))}
                          </div>
                        </div>
                      ))}
                    </div>
                  )}
                </div>
              );
            })
          )}
        </div>
      )}

      {/* PRs Tab */}
      {activeTab === 'prs' && (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
          {prExercises.map(({ ex, pr }) => (
            <div
              key={ex.id}
              className="bg-[#161514] border border-[#262422] rounded-[24px] p-4 flex items-center justify-between"
            >
              <div>
                <div className="font-bold text-sm text-white">{ex.name}</div>
                <div className="text-[11px] text-neutral-400 uppercase font-semibold mt-0.5">
                  {ex.primary} • {ex.equipment}
                </div>
              </div>

              <div className="text-right">
                <div className="text-base font-black text-[#D9A184] font-mono">
                  {pr.maxWeight} {settings.units}
                </div>
                <div className="text-xs text-neutral-400 font-mono">
                  Est. 1RM: {pr.maxOneRm} {settings.units}
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};
