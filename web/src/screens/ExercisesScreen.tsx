import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { ExerciseArt } from '../components/ExerciseArt';
import { Search, Star, Plus, ChevronRight, Dumbbell, Filter } from 'lucide-react';
import type { Exercise } from '../types';

export const ExercisesScreen: React.FC = () => {
  const { allExercises, favorites, toggleFavorite, pushRoute } = useGymStore();

  const [query, setQuery] = useState('');
  const [selectedMuscle, setSelectedMuscle] = useState<string>('all');
  const [selectedEquipment, setSelectedEquipment] = useState<string>('all');
  const [onlyFavorites, setOnlyFavorites] = useState(false);
  const [showAddCustomModal, setShowAddCustomModal] = useState(false);

  // New Custom Exercise state
  const [customName, setCustomName] = useState('');
  const [customPrimary, setCustomPrimary] = useState('chest');
  const [customEquipment, setCustomEquipment] = useState('Dumbbell');

  const muscleFilters = [
    { id: 'all', label: 'All' },
    { id: 'chest', label: 'Chest' },
    { id: 'back', label: 'Back' },
    { id: 'shoulders', label: 'Shoulders' },
    { id: 'biceps', label: 'Biceps' },
    { id: 'triceps', label: 'Triceps' },
    { id: 'quads', label: 'Quads' },
    { id: 'hamstrings', label: 'Hamstrings' },
    { id: 'abdomen', label: 'Abs' },
    { id: 'calves', label: 'Calves' },
    { id: 'glutes', label: 'Glutes' },
  ];

  const equipmentFilters = ['all', 'Barbell', 'Dumbbell', 'Machine', 'Cable', 'Bodyweight', 'Kettlebell'];

  // Filter exercises
  const filtered = allExercises.filter((e) => {
    if (
      query &&
      !e.name.toLowerCase().includes(query.toLowerCase()) &&
      !e.primary.toLowerCase().includes(query.toLowerCase())
    ) {
      return false;
    }
    if (selectedMuscle !== 'all' && e.primary !== selectedMuscle) {
      return false;
    }
    if (selectedEquipment !== 'all' && e.equipment !== selectedEquipment) {
      return false;
    }
    if (onlyFavorites && !favorites[e.id]) {
      return false;
    }
    return true;
  });

  const handleOpenDetail = (id: string) => {
    useGymStore.getState().activeExerciseId = id;
    pushRoute('exercise-detail');
  };

  const handleCreateCustom = (e: React.FormEvent) => {
    e.preventDefault();
    if (!customName.trim()) return;

    const newEx: Exercise = {
      id: `custom-${Date.now()}`,
      name: customName.trim(),
      primary: customPrimary,
      secondary: [],
      equipment: customEquipment,
      difficulty: 'Beginner',
      art: '',
      steps: ['Perform the exercise with controlled form and full range of motion.'],
      isCustom: true,
    };

    useGymStore.getState().customExercises.push(newEx);
    setShowAddCustomModal(false);
    setCustomName('');
  };

  // Group filtered exercises by primary muscle
  const groups: Record<string, Exercise[]> = {};
  filtered.forEach((ex) => {
    const key = ex.primary.toUpperCase();
    if (!groups[key]) groups[key] = [];
    groups[key].push(ex);
  });

  return (
    <div className="max-w-6xl mx-auto space-y-6 pb-20 animate-in fade-in duration-200">
      {/* Top Header & Search (As seen in 06-library.png) */}
      <div className="bg-[#161514] border border-[#262422] rounded-[28px] p-6 shadow-xl space-y-4">
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-2xl sm:text-3xl font-black text-white tracking-tight">
              Exercises
            </h2>
            <p className="text-xs text-neutral-400 mt-1">
              552 exercises in your local catalog
            </p>
          </div>

          <button
            onClick={() => setShowAddCustomModal(true)}
            className="w-10 h-10 rounded-full bg-[#262422] hover:bg-[#33302C] border border-[#3E3A35] text-white flex items-center justify-center active:scale-95 transition-all shadow"
            title="Create Custom Exercise"
          >
            <Plus className="w-5 h-5" />
          </button>
        </div>

        {/* Search Bar */}
        <div className="relative">
          <Search className="w-5 h-5 text-neutral-500 absolute left-4 top-1/2 -translate-y-1/2" />
          <input
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="Search exercises by name or muscle..."
            className="w-full bg-[#100F0E] border border-[#242220] rounded-full pl-12 pr-6 py-3.5 text-sm text-white placeholder-neutral-500 focus:outline-none focus:border-[#D9A184] transition-colors"
          />
        </div>

        {/* Filter Pills (As in 06-library.png) */}
        <div className="flex items-center gap-2 overflow-x-auto pb-1 scrollbar-none">
          <button
            onClick={() => setOnlyFavorites(!onlyFavorites)}
            className={`px-4 py-2 rounded-full text-xs font-bold whitespace-nowrap transition-all flex items-center gap-1.5 ${
              onlyFavorites
                ? 'bg-white text-[#140D09] shadow-md'
                : 'bg-[#201D1B] border border-[#2B2724] text-neutral-400 hover:text-white'
            }`}
          >
            <Star className={`w-3.5 h-3.5 ${onlyFavorites ? 'fill-current' : ''}`} />
            Favourites · {Object.values(favorites).filter(Boolean).length}
          </button>

          {muscleFilters.map((m) => (
            <button
              key={m.id}
              onClick={() => setSelectedMuscle(m.id)}
              className={`px-4 py-2 rounded-full text-xs font-bold whitespace-nowrap transition-all ${
                selectedMuscle === m.id
                  ? 'bg-white text-[#140D09] shadow-md'
                  : 'bg-[#201D1B] border border-[#2B2724] text-neutral-400 hover:text-white'
              }`}
            >
              {m.label}
            </button>
          ))}
        </div>
      </div>

      {/* Grouped Exercise Catalog (As seen in 06-library.png) */}
      <div className="space-y-6">
        {Object.entries(groups).map(([groupTitle, exercisesInGroup]) => (
          <div key={groupTitle} className="space-y-2">
            <h3 className="text-xs font-black text-neutral-500 tracking-widest uppercase px-2">
              {groupTitle}
            </h3>

            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2.5">
              {exercisesInGroup.map((ex) => {
                const isFav = favorites[ex.id];
                return (
                  <div
                    key={ex.id}
                    onClick={() => handleOpenDetail(ex.id)}
                    className="bg-[#161514] hover:bg-[#1E1C1A] border border-[#262422] rounded-[22px] p-3.5 flex items-center justify-between cursor-pointer transition-all active:scale-99 shadow-sm group"
                  >
                    <div className="flex items-center gap-3 min-w-0">
                      <div className="w-12 h-12 rounded-xl bg-[#100F0E] overflow-hidden flex items-center justify-center flex-shrink-0 border border-[#201E1C]">
                        {ex.art ? (
                          <ExerciseArt slug={ex.art} height={48} loop={false} />
                        ) : (
                          <Dumbbell className="w-5 h-5 text-neutral-600" />
                        )}
                      </div>

                      <div className="min-w-0">
                        <div className="font-bold text-sm text-white truncate group-hover:text-[#D9A184] transition-colors">
                          {ex.name}
                        </div>
                        <div className="text-xs text-neutral-400 truncate mt-0.5">
                          {ex.equipment} · {ex.difficulty}
                        </div>
                      </div>
                    </div>

                    <div className="flex items-center gap-2 pl-2">
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          toggleFavorite(ex.id);
                        }}
                        className={`p-2 rounded-xl hover:bg-[#222] transition-colors ${
                          isFav ? 'text-[#D9A184]' : 'text-neutral-600 hover:text-neutral-300'
                        }`}
                      >
                        <Star className={`w-4 h-4 ${isFav ? 'fill-current' : ''}`} />
                      </button>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        ))}

        {filtered.length === 0 && (
          <div className="p-12 text-center bg-[#161514] rounded-3xl border border-[#262422] text-neutral-400 text-sm">
            No exercises match your search query or filters.
          </div>
        )}
      </div>

      {/* Custom Exercise Modal */}
      {showAddCustomModal && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#181615] border border-[#282624] rounded-3xl w-full max-w-md p-6 space-y-4 animate-in zoom-in-95 duration-200">
            <h3 className="text-lg font-black text-white">Create Custom Exercise</h3>
            <form onSubmit={handleCreateCustom} className="space-y-3">
              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">
                  Exercise Name
                </label>
                <input
                  type="text"
                  required
                  value={customName}
                  onChange={(e) => setCustomName(e.target.value)}
                  placeholder="e.g. Bulgarian Split Squat"
                  className="w-full bg-[#100F0E] border border-[#282624] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                />
              </div>

              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">
                  Primary Muscle
                </label>
                <select
                  value={customPrimary}
                  onChange={(e) => setCustomPrimary(e.target.value)}
                  className="w-full bg-[#100F0E] border border-[#282624] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                >
                  {muscleFilters
                    .filter((m) => m.id !== 'all')
                    .map((m) => (
                      <option key={m.id} value={m.id}>
                        {m.label}
                      </option>
                    ))}
                </select>
              </div>

              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">Equipment</label>
                <select
                  value={customEquipment}
                  onChange={(e) => setCustomEquipment(e.target.value)}
                  className="w-full bg-[#100F0E] border border-[#282624] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                >
                  {equipmentFilters
                    .filter((e) => e !== 'all')
                    .map((eq) => (
                      <option key={eq} value={eq}>
                        {eq}
                      </option>
                    ))}
                </select>
              </div>

              <div className="pt-2 flex gap-2">
                <button
                  type="button"
                  onClick={() => setShowAddCustomModal(false)}
                  className="flex-1 py-2.5 rounded-xl bg-[#222] text-neutral-300 font-bold text-xs"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  className="flex-1 py-2.5 rounded-xl bg-white text-[#140D09] font-black text-xs"
                >
                  Save Exercise
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
};
