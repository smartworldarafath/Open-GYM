import React, { useState } from 'react';
import bodyData from '../data/bodyData.json';

interface BodyMapProps {
  selectedMuscles?: string[];
  muscleLoads?: Record<string, number>; // 0 to 1 for heat mode
  mode?: 'select' | 'heat';
  onToggleMuscle?: (muscleId: string) => void;
  className?: string;
}

export const BodyMap: React.FC<BodyMapProps> = ({
  selectedMuscles = [],
  muscleLoads,
  mode = 'select',
  onToggleMuscle,
  className = '',
}) => {
  const [view, setView] = useState<'both' | 'front' | 'back'>('both');
  const [hoveredMuscle, setHoveredMuscle] = useState<string | null>(null);

  const { bodyViewW, bodyViewH, bodyBaseMain, bodyBaseLite, muscleFills } = bodyData as {
    bodyViewW: number;
    bodyViewH: number;
    bodyBaseMain: string[];
    bodyBaseLite: string[];
    muscleFills: Record<string, string[]>;
  };

  const getMuscleFillColor = (muscleId: string) => {
    if (mode === 'heat' && muscleLoads) {
      const load = muscleLoads[muscleId] || 0;
      if (load <= 0) return '#242424';
      if (load < 0.25) return '#7A4028';
      if (load < 0.5) return '#B4632C';
      if (load < 0.75) return '#E38B3A';
      return '#FFC168';
    }

    const isSelected = selectedMuscles.includes(muscleId);
    if (isSelected) {
      return '#D9A184'; // GymMane Ember / Accent
    }

    if (hoveredMuscle === muscleId) {
      return '#5A544E';
    }

    return '#33302C'; // Idle muscle
  };

  const muscleLabels: Record<string, string> = {
    chest: 'Chest',
    shoulders: 'Shoulders',
    biceps: 'Biceps',
    forearm: 'Forearms',
    abdomen: 'Abs',
    obliques: 'Obliques',
    quads: 'Quads',
    trapezius: 'Traps',
    back: 'Back / Lats',
    triceps: 'Triceps',
    glutes: 'Glutes',
    hamstrings: 'Hamstrings',
    calves: 'Calves',
  };

  return (
    <div className={`flex flex-col items-center select-none ${className}`}>
      {/* View Switcher Pills */}
      <div className="flex items-center gap-1.5 p-1 bg-[#1C1C1C] rounded-xl mb-3 border border-[#2B2B2B]">
        <button
          onClick={() => setView('both')}
          className={`px-3 py-1 text-xs font-bold rounded-lg transition-all ${
            view === 'both' ? 'bg-[#2B2B2B] text-white shadow' : 'text-neutral-400 hover:text-white'
          }`}
        >
          All
        </button>
        <button
          onClick={() => setView('front')}
          className={`px-3 py-1 text-xs font-bold rounded-lg transition-all ${
            view === 'front' ? 'bg-[#2B2B2B] text-white shadow' : 'text-neutral-400 hover:text-white'
          }`}
        >
          Front
        </button>
        <button
          onClick={() => setView('back')}
          className={`px-3 py-1 text-xs font-bold rounded-lg transition-all ${
            view === 'back' ? 'bg-[#2B2B2B] text-white shadow' : 'text-neutral-400 hover:text-white'
          }`}
        >
          Back
        </button>
      </div>

      {/* SVG Canvas */}
      <div className="relative w-full max-w-[420px] aspect-[535/462] bg-[#141312] rounded-2xl p-2 border border-[#262422] shadow-inner flex items-center justify-center overflow-hidden">
        <svg
          viewBox={
            view === 'front'
              ? '0 0 250 462'
              : view === 'back'
              ? '280 0 255 462'
              : `0 0 ${bodyViewW} ${bodyViewH}`
          }
          className="w-full h-full cursor-pointer transition-all duration-300"
        >
          {/* Base Silhouettes */}
          <g fill="#1F1D1B" opacity={0.65}>
            {bodyBaseLite.map((d, i) => (
              <path key={`lite-${i}`} d={d} />
            ))}
          </g>
          <g fill="#191816">
            {bodyBaseMain.map((d, i) => (
              <path key={`main-${i}`} d={d} />
            ))}
          </g>

          {/* Muscle Groups */}
          {Object.entries(muscleFills).map(([muscleId, paths]) => {
            const fillColor = getMuscleFillColor(muscleId);
            const isSelected = selectedMuscles.includes(muscleId);

            return (
              <g
                key={muscleId}
                onClick={() => onToggleMuscle?.(muscleId)}
                onMouseEnter={() => setHoveredMuscle(muscleId)}
                onMouseLeave={() => setHoveredMuscle(null)}
                className="transition-colors duration-150"
                style={{ cursor: onToggleMuscle ? 'pointer' : 'default' }}
              >
                {paths.map((d, i) => (
                  <path
                    key={`${muscleId}-${i}`}
                    d={d}
                    fill={fillColor}
                    stroke={isSelected ? '#FFDFC6' : '#141312'}
                    strokeWidth={isSelected ? 1.5 : 0.6}
                    strokeLinejoin="round"
                    className="hover:opacity-90 transition-all"
                  />
                ))}
              </g>
            );
          })}
        </svg>

        {/* Hover / Active Indicator tooltip */}
        {hoveredMuscle && (
          <div className="absolute bottom-3 left-1/2 -translate-x-1/2 px-3 py-1 bg-[#1C1C1C]/90 backdrop-blur-md border border-[#3E3E3E] rounded-full text-xs font-semibold text-white tracking-wide shadow-lg pointer-events-none">
            {muscleLabels[hoveredMuscle] || hoveredMuscle}
          </div>
        )}
      </div>

      {/* Selected Muscle Tags */}
      {mode === 'select' && selectedMuscles.length > 0 && (
        <div className="flex flex-wrap gap-1.5 justify-center mt-3 max-w-sm">
          {selectedMuscles.map((m) => (
            <span
              key={m}
              onClick={() => onToggleMuscle?.(m)}
              className="inline-flex items-center gap-1.5 px-2.5 py-1 text-xs font-bold rounded-lg bg-[#D9A184]/20 border border-[#D9A184]/50 text-[#D9A184] cursor-pointer hover:bg-[#D9A184]/30 transition-colors"
            >
              {muscleLabels[m] || m}
              <span className="text-[10px] opacity-70">✕</span>
            </span>
          ))}
        </div>
      )}
    </div>
  );
};
