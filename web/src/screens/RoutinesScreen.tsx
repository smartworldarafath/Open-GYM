import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import defaultProgramsData from '../data/programs.json';
import {
  Plus,
  Play,
  Calendar,
  Layers,
  Download,
  Trash2,
  ChevronRight,
  Dumbbell,
  Folder,
  MoreVertical,
  Share2,
} from 'lucide-react';
import type { Routine } from '../types';

export const RoutinesScreen: React.FC = () => {
  const {
    routines,
    weeklyPlan,
    assignWeeklyRoutine,
    createRoutine,
    deleteRoutine,
    startWorkoutFromRoutine,
    allExercises,
  } = useGymStore();

  const [showNewRoutineModal, setShowNewRoutineModal] = useState(false);
  const [newRoutineName, setNewRoutineName] = useState('');
  const [newRoutineGroup, setNewRoutineGroup] = useState('PPL');
  const [showTemplatesModal, setShowTemplatesModal] = useState(false);

  const daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  const handleImportTemplate = (template: (typeof defaultProgramsData)[0]) => {
    template.days.forEach((day) => {
      const exIds = day.exercises
        .map((e) => {
          const match = allExercises.find(
            (b) => b.name.toLowerCase() === e.name.toLowerCase()
          );
          return match ? match.id : null;
        })
        .filter(Boolean) as string[];

      const newId = createRoutine(day.name, template.name, '#D9A184');
      const storeRoutines = useGymStore.getState().routines;
      const created = storeRoutines.find((r: Routine) => r.id === newId);
      if (created) {
        created.exerciseIds = exIds;
      }
    });

    setShowTemplatesModal(false);
  };

  const handleCreateNew = (e: React.FormEvent) => {
    e.preventDefault();
    if (!newRoutineName.trim()) return;

    createRoutine(newRoutineName.trim(), newRoutineGroup, '#D9A184');
    setShowNewRoutineModal(false);
    setNewRoutineName('');
  };

  // Group routines by folder / group
  const groupedRoutines: Record<string, Routine[]> = {};
  routines.forEach((r) => {
    const group = r.group || 'My Routines';
    if (!groupedRoutines[group]) groupedRoutines[group] = [];
    groupedRoutines[group].push(r);
  });

  const pastelTabColors = [
    'bg-[#93B5D3]', // Soft blue
    'bg-[#A4C2A5]', // Soft green
    'bg-[#E5A8B4]', // Soft pink
    'bg-[#E3C696]', // Soft yellow
    'bg-[#B5A4D3]', // Soft purple
  ];

  return (
    <div className="max-w-6xl mx-auto space-y-6 pb-20 animate-in fade-in duration-200">
      <div className="flex items-center justify-between">
        <div>
          <h2 className="text-2xl sm:text-3xl font-black text-white tracking-tight">Routines</h2>
          <p className="text-xs text-neutral-400 mt-1">
            Weekly planning & workout split folders
          </p>
        </div>

        <div className="flex items-center gap-2">
          <button
            onClick={() => setShowTemplatesModal(true)}
            className="p-2.5 rounded-full bg-[#201E1C] hover:bg-[#2A2724] border border-[#302C28] text-neutral-200 text-xs font-bold flex items-center gap-1.5 active:scale-95 transition-all shadow"
            title="Import Templates"
          >
            <Download className="w-4 h-4 text-[#D9A184]" />
            Templates
          </button>
          <button
            onClick={() => setShowNewRoutineModal(true)}
            className="p-2.5 rounded-full bg-white hover:bg-neutral-100 text-[#140D09] text-xs font-black flex items-center gap-1.5 active:scale-95 transition-all shadow"
          >
            <Plus className="w-4 h-4" />
            New Routine
          </button>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-start">
        {/* Left Column: WEEKLY PLAN (As seen in 07-routines.png) */}
        <div className="lg:col-span-5 bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
          <div className="flex items-center justify-between">
            <h3 className="text-xs font-black text-neutral-400 uppercase tracking-widest">
              WEEKLY PLAN
            </h3>
            <span className="text-xs font-bold text-[#D9A184]">7 Days</span>
          </div>

          <div className="space-y-1">
            {daysOfWeek.map((dayName, idx) => {
              const dayNum = idx + 1;
              const assignedId = weeklyPlan[dayNum];
              const assignedRoutine = routines.find((r) => r.id === assignedId);

              return (
                <div
                  key={dayNum}
                  className="flex items-center justify-between p-3 rounded-2xl hover:bg-[#1E1C1A] transition-colors"
                >
                  <span className="text-sm font-bold text-white w-16">{dayName}</span>

                  <select
                    value={assignedId || ''}
                    onChange={(e) => assignWeeklyRoutine(dayNum, e.target.value)}
                    className="bg-[#121110] border border-[#262422] rounded-xl px-3 py-1.5 text-xs font-bold text-white focus:outline-none focus:border-[#D9A184] cursor-pointer"
                  >
                    <option value="">Rest day</option>
                    {routines.map((r) => (
                      <option key={r.id} value={r.id}>
                        {r.name}
                      </option>
                    ))}
                  </select>
                </div>
              );
            })}
          </div>
        </div>

        {/* Right Column: YOUR ROUTINES with Folder Tabs (As seen in 07-routines.png) */}
        <div className="lg:col-span-7 space-y-6">
          <div className="flex items-center justify-between px-1">
            <h3 className="text-xs font-black text-neutral-400 uppercase tracking-widest">
              YOUR ROUTINES
            </h3>
          </div>

          {Object.entries(groupedRoutines).map(([groupTitle, routinesInGroup], gIdx) => (
            <div key={groupTitle} className="space-y-3">
              <div className="flex items-center justify-between text-xs font-bold text-neutral-400 px-2">
                <span className="flex items-center gap-1.5 text-white">
                  <Folder className="w-4 h-4 text-[#D9A184]" /> {groupTitle}
                </span>
                <span className="font-mono">{routinesInGroup.length}</span>
              </div>

              {/* Folder Cards Grid */}
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                {routinesInGroup.map((routine, rIdx) => {
                  const tabColor = pastelTabColors[(gIdx * 2 + rIdx) % pastelTabColors.length];

                  return (
                    <div
                      key={routine.id}
                      className="relative pt-6 group cursor-pointer"
                    >
                      {/* Folder Top Tab (As seen in 07-routines.png) */}
                      <div
                        className={`absolute top-0 left-4 right-4 h-9 ${tabColor} rounded-t-2xl px-4 pt-1.5 flex items-center justify-between shadow`}
                      >
                        <div className="w-16 h-1 bg-black/20 rounded-full" />
                      </div>

                      {/* Folder Main Body Card */}
                      <div className="relative z-10 bg-[#161514] border border-[#2B2724] rounded-3xl p-5 shadow-xl space-y-4">
                        <div className="flex items-start justify-between">
                          <div>
                            <h4 className="text-lg font-black text-white group-hover:text-[#D9A184] transition-colors flex items-center gap-1">
                              {routine.name} <ChevronRight className="w-4 h-4" />
                            </h4>
                            <p className="text-xs text-neutral-400 mt-1">
                              {routine.group} · {routine.exerciseIds.length} exercises
                            </p>
                          </div>

                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              if (confirm(`Delete routine "${routine.name}"?`)) {
                                deleteRoutine(routine.id);
                              }
                            }}
                            className="p-1.5 rounded-lg text-neutral-500 hover:text-red-400 hover:bg-[#202020] transition-colors"
                          >
                            <Trash2 className="w-4 h-4" />
                          </button>
                        </div>

                        {/* Start Workout Button */}
                        <button
                          onClick={() => startWorkoutFromRoutine(routine.id)}
                          className="w-full py-2.5 rounded-full bg-[#242220] hover:bg-[#302C28] text-white font-bold text-xs flex items-center justify-center gap-2 active:scale-95 transition-all shadow"
                        >
                          <Play className="w-3.5 h-3.5 fill-current" />
                          Start workout
                        </button>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          ))}

          {routines.length === 0 && (
            <div className="p-12 text-center bg-[#161514] rounded-3xl border border-[#262422] text-neutral-400 text-sm">
              No routines saved yet. Click "Templates" to import ready-made programs!
            </div>
          )}
        </div>
      </div>

      {/* Program Templates Modal */}
      {showTemplatesModal && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#181615] border border-[#282624] rounded-3xl w-full max-w-lg max-h-[85vh] flex flex-col p-6 space-y-4 animate-in zoom-in-95 duration-200">
            <div>
              <h3 className="text-xl font-black text-white">Classic Training Programs</h3>
              <p className="text-xs text-neutral-400 mt-1">
                Import legendary routines (PPL, StrongLifts, Full Body) in one click
              </p>
            </div>

            <div className="flex-1 overflow-y-auto space-y-3 pr-1">
              {defaultProgramsData.map((prog) => (
                <div
                  key={prog.id}
                  className="bg-[#121110] border border-[#242220] rounded-2xl p-4 flex items-center justify-between hover:border-[#D9A184]/40 transition-all"
                >
                  <div>
                    <h5 className="font-bold text-sm text-white">{prog.name}</h5>
                    <span className="text-xs text-neutral-400 mt-0.5 block">
                      {prog.days.length} Workout Days •{' '}
                      {prog.days.reduce((acc, d) => acc + d.exercises.length, 0)} Total Exercises
                    </span>
                  </div>

                  <button
                    onClick={() => handleImportTemplate(prog)}
                    className="px-4 py-2 rounded-full bg-white hover:bg-neutral-100 text-[#140D09] text-xs font-black transition-all active:scale-95 shadow"
                  >
                    Import
                  </button>
                </div>
              ))}
            </div>

            <button
              onClick={() => setShowTemplatesModal(false)}
              className="w-full py-3 rounded-full bg-[#242220] text-neutral-300 font-bold text-xs"
            >
              Close
            </button>
          </div>
        </div>
      )}

      {/* Create New Routine Modal */}
      {showNewRoutineModal && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#181615] border border-[#282624] rounded-3xl w-full max-w-md p-6 space-y-4 animate-in zoom-in-95 duration-200">
            <h3 className="text-xl font-black text-white">Create Custom Routine</h3>
            <form onSubmit={handleCreateNew} className="space-y-4">
              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">
                  Routine Name
                </label>
                <input
                  type="text"
                  required
                  value={newRoutineName}
                  onChange={(e) => setNewRoutineName(e.target.value)}
                  placeholder="e.g. Upper Body Strength"
                  className="w-full bg-[#100F0E] border border-[#282624] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                />
              </div>

              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">
                  Folder / Program Group
                </label>
                <input
                  type="text"
                  value={newRoutineGroup}
                  onChange={(e) => setNewRoutineGroup(e.target.value)}
                  placeholder="e.g. PPL, Hypertrophy"
                  className="w-full bg-[#100F0E] border border-[#282624] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                />
              </div>

              <div className="pt-2 flex gap-2">
                <button
                  type="button"
                  onClick={() => setShowNewRoutineModal(false)}
                  className="flex-1 py-3 rounded-full bg-[#242220] text-neutral-300 font-bold text-xs"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  className="flex-1 py-3 rounded-full bg-white text-[#140D09] font-black text-xs"
                >
                  Create Routine
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
};
