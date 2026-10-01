import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import {
  Calculator,
  Dumbbell,
  Percent,
  Flame,
  Scale,
  Zap,
  ChevronRight,
  TrendingUp,
} from 'lucide-react';

export const ToolsScreen: React.FC = () => {
  const { settings } = useGymStore();
  const [activeTool, setActiveTool] = useState<
    'menu' | 'rm' | 'plate' | 'warmup' | 'bmi' | 'cal' | 'bf'
  >('menu');

  // 1RM States
  const [rmWeight, setRmWeight] = useState(100);
  const [rmReps, setRmReps] = useState(5);

  // Plate Calculator States
  const [targetWeight, setTargetWeight] = useState(100);
  const [barWeight, setBarWeight] = useState(20);

  // Warmup Ramp States
  const [workingWeight, setWorkingWeight] = useState(100);

  // BMI States
  const [heightCm, setHeightCm] = useState(178);
  const [weightKg, setWeightKg] = useState(76);

  // TDEE States
  const [age, setAge] = useState(26);
  const [gender, setGender] = useState<'male' | 'female'>('male');
  const [activity, setActivity] = useState<number>(1.55); // moderate

  // Body Fat States
  const [neckCm, setNeckCm] = useState(38);
  const [waistCm, setWaistCm] = useState(82);
  const [hipCm, setHipCm] = useState(96);

  // 1RM Formula: Epley
  const calculated1RM = Math.round(rmWeight * (1 + rmReps / 30) * 10) / 10;
  const percentages = [95, 90, 85, 80, 75, 70, 65, 60, 50];

  // Plate Math
  const computePlates = () => {
    const weightToLoad = Math.max(0, targetWeight - barWeight);
    const perSide = weightToLoad / 2;
    const plateSizes = settings.units === 'kg' ? [25, 20, 15, 10, 5, 2.5, 1.25] : [45, 35, 25, 10, 5, 2.5];
    let remaining = perSide;
    const loadedPlates: number[] = [];

    plateSizes.forEach((size) => {
      while (remaining >= size) {
        loadedPlates.push(size);
        remaining -= size;
      }
    });

    return { perSide, loadedPlates, remainder: Math.round(remaining * 10) / 10 };
  };

  // BMI Math
  const calculatedBMI = Math.round((weightKg / Math.pow(heightCm / 100, 2)) * 10) / 10;
  const getBMICategory = (bmi: number) => {
    if (bmi < 18.5) return { label: 'Underweight', color: 'text-blue-400' };
    if (bmi < 24.9) return { label: 'Normal Weight', color: 'text-green-400' };
    if (bmi < 29.9) return { label: 'Overweight', color: 'text-amber-400' };
    return { label: 'Obese', color: 'text-red-400' };
  };

  // TDEE Math (Mifflin-St Jeor)
  const bmr =
    gender === 'male'
      ? 10 * weightKg + 6.25 * heightCm - 5 * age + 5
      : 10 * weightKg + 6.25 * heightCm - 5 * age - 161;
  const tdee = Math.round(bmr * activity);

  // Navy Body Fat % Math
  const bodyFatPct = Math.max(
    3,
    Math.round(
      (gender === 'male'
        ? 495 / (1.0324 - 0.19077 * Math.log10(waistCm - neckCm) + 0.15456 * Math.log10(heightCm)) - 450
        : 495 / (1.29579 - 0.35004 * Math.log10(waistCm + hipCm - neckCm) + 0.221 * Math.log10(heightCm)) - 450) * 10
    ) / 10
  );

  return (
    <div className="space-y-4 pb-24 animate-in fade-in duration-200">
      {activeTool === 'menu' ? (
        <>
          <div>
            <h2 className="text-xl font-black text-white tracking-tight">Gym Calculators</h2>
            <p className="text-xs text-neutral-400 mt-0.5">
              6 power tools built for the lifting floor
            </p>
          </div>

          <div className="grid grid-cols-2 gap-2.5">
            <div
              onClick={() => setActiveTool('rm')}
              className="bg-[#181818] hover:bg-[#202020] border border-[#282828] rounded-2xl p-4 cursor-pointer transition-all active:scale-98"
            >
              <div className="w-10 h-10 rounded-xl bg-[#282420] text-[#D9A184] flex items-center justify-center mb-3">
                <Dumbbell className="w-5 h-5" />
              </div>
              <h3 className="font-bold text-white text-sm">1RM Estimator</h3>
              <p className="text-[11px] text-neutral-400 mt-1">
                Epley one-rep max & percentage table
              </p>
            </div>

            <div
              onClick={() => setActiveTool('plate')}
              className="bg-[#181818] hover:bg-[#202020] border border-[#282828] rounded-2xl p-4 cursor-pointer transition-all active:scale-98"
            >
              <div className="w-10 h-10 rounded-xl bg-[#202624] text-[#8FA377] flex items-center justify-center mb-3">
                <Calculator className="w-5 h-5" />
              </div>
              <h3 className="font-bold text-white text-sm">Plate Math</h3>
              <p className="text-[11px] text-neutral-400 mt-1">
                Barbell sleeve loader & disc counts
              </p>
            </div>

            <div
              onClick={() => setActiveTool('warmup')}
              className="bg-[#181818] hover:bg-[#202020] border border-[#282828] rounded-2xl p-4 cursor-pointer transition-all active:scale-98"
            >
              <div className="w-10 h-10 rounded-xl bg-[#282024] text-[#D984A1] flex items-center justify-center mb-3">
                <Zap className="w-5 h-5" />
              </div>
              <h3 className="font-bold text-white text-sm">Warm-up Ramp</h3>
              <p className="text-[11px] text-neutral-400 mt-1">
                5-stage ramp up to working weight
              </p>
            </div>

            <div
              onClick={() => setActiveTool('cal')}
              className="bg-[#181818] hover:bg-[#202020] border border-[#282828] rounded-2xl p-4 cursor-pointer transition-all active:scale-98"
            >
              <div className="w-10 h-10 rounded-xl bg-[#242028] text-[#A184D9] flex items-center justify-center mb-3">
                <Flame className="w-5 h-5" />
              </div>
              <h3 className="font-bold text-white text-sm">TDEE & Macros</h3>
              <p className="text-[11px] text-neutral-400 mt-1">
                Caloric burn & protein/carb targets
              </p>
            </div>

            <div
              onClick={() => setActiveTool('bmi')}
              className="bg-[#181818] hover:bg-[#202020] border border-[#282828] rounded-2xl p-4 cursor-pointer transition-all active:scale-98"
            >
              <div className="w-10 h-10 rounded-xl bg-[#202428] text-[#7FA8C9] flex items-center justify-center mb-3">
                <Scale className="w-5 h-5" />
              </div>
              <h3 className="font-bold text-white text-sm">BMI Calculator</h3>
              <p className="text-[11px] text-neutral-400 mt-1">Body mass index classification</p>
            </div>

            <div
              onClick={() => setActiveTool('bf')}
              className="bg-[#181818] hover:bg-[#202020] border border-[#282828] rounded-2xl p-4 cursor-pointer transition-all active:scale-98"
            >
              <div className="w-10 h-10 rounded-xl bg-[#282620] text-[#D9C484] flex items-center justify-center mb-3">
                <Percent className="w-5 h-5" />
              </div>
              <h3 className="font-bold text-white text-sm">Navy Body Fat</h3>
              <p className="text-[11px] text-neutral-400 mt-1">Circumference-based body fat %</p>
            </div>
          </div>
        </>
      ) : (
        /* Calculator Views */
        <div className="space-y-4">
          <button
            onClick={() => setActiveTool('menu')}
            className="text-xs font-bold text-[#D9A184] hover:underline flex items-center gap-1"
          >
            ← Back to Calculators
          </button>

          {/* 1RM Calculator */}
          {activeTool === 'rm' && (
            <div className="space-y-4">
              <div className="bg-[#181818] border border-[#282828] rounded-3xl p-6 text-center shadow-xl">
                <span className="text-[11px] font-bold text-neutral-400 uppercase tracking-widest block mb-1">
                  Estimated One Rep Max
                </span>
                <div className="text-5xl font-black text-white font-mono tracking-tight my-2">
                  {calculated1RM}{' '}
                  <span className="text-xl font-bold text-[#D9A184]">{settings.units}</span>
                </div>
                <span className="text-xs text-neutral-400">
                  Based on {rmWeight} {settings.units} × {rmReps} reps
                </span>
              </div>

              {/* Inputs */}
              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">
                    Weight Lifted ({settings.units})
                  </label>
                  <input
                    type="number"
                    value={rmWeight}
                    onChange={(e) => setRmWeight(parseFloat(e.target.value) || 0)}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                  />
                </div>

                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">Reps Performed</label>
                  <input
                    type="number"
                    value={rmReps}
                    onChange={(e) => setRmReps(parseInt(e.target.value) || 1)}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                  />
                </div>
              </div>

              {/* Percentage Breakdown Table */}
              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-2">
                <h4 className="text-xs font-bold text-neutral-300 uppercase tracking-wider mb-2">
                  Percentage Breakdown
                </h4>
                <div className="grid grid-cols-3 gap-2">
                  {percentages.map((pct) => (
                    <div key={pct} className="p-2.5 bg-[#141414] rounded-xl text-center">
                      <span className="text-[11px] text-neutral-400 font-bold block">{pct}%</span>
                      <span className="text-sm font-black text-white font-mono">
                        {Math.round(calculated1RM * (pct / 100) * 10) / 10}
                      </span>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* Plate Calculator */}
          {activeTool === 'plate' && (
            <div className="space-y-4">
              {(() => {
                const { perSide, loadedPlates, remainder } = computePlates();
                return (
                  <>
                    <div className="bg-[#181818] border border-[#282828] rounded-3xl p-5 text-center shadow-xl">
                      <span className="text-[11px] font-bold text-neutral-400 uppercase tracking-widest block mb-1">
                        Plates Per Side
                      </span>
                      <div className="text-3xl font-black text-white font-mono tracking-tight my-2">
                        {loadedPlates.join(' + ') || 'Empty Bar'}
                      </div>
                      <span className="text-xs text-[#D9A184] font-bold">
                        {perSide} {settings.units} each side {remainder > 0 && `(+${remainder} rem)`}
                      </span>

                      {/* Visual Barbell Sleeve */}
                      <div className="mt-4 pt-3 border-t border-[#262626] flex items-center justify-center gap-1 overflow-x-auto py-2">
                        <div className="w-12 h-4 bg-neutral-600 rounded-l-md" title="Barbell" />
                        <div className="w-4 h-12 bg-neutral-400 rounded-sm" title="Collar" />
                        {loadedPlates.map((plate, pIdx) => {
                          const heightClass =
                            plate >= 20 ? 'h-24 w-4 bg-[#D9A184]' : plate >= 10 ? 'h-18 w-3.5 bg-blue-400' : 'h-12 w-3 bg-neutral-300';
                          return (
                            <div
                              key={pIdx}
                              className={`${heightClass} rounded-sm shadow-md flex items-center justify-center text-[8px] font-black text-black select-none`}
                              title={`${plate} ${settings.units}`}
                            >
                              {plate}
                            </div>
                          );
                        })}
                        <div className="w-16 h-3 bg-neutral-500 rounded-r-md" title="Bar tip" />
                      </div>
                    </div>

                    <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
                      <div>
                        <label className="text-xs font-bold text-neutral-400 block mb-1">
                          Target Weight ({settings.units})
                        </label>
                        <input
                          type="number"
                          value={targetWeight}
                          onChange={(e) => setTargetWeight(parseFloat(e.target.value) || 0)}
                          className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                          step="2.5"
                        />
                      </div>

                      <div>
                        <label className="text-xs font-bold text-neutral-400 block mb-1">
                          Bar Weight ({settings.units})
                        </label>
                        <input
                          type="number"
                          value={barWeight}
                          onChange={(e) => setBarWeight(parseFloat(e.target.value) || 0)}
                          className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                        />
                      </div>
                    </div>
                  </>
                );
              })()}
            </div>
          )}

          {/* Warmup Calculator */}
          {activeTool === 'warmup' && (
            <div className="space-y-4">
              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4">
                <label className="text-xs font-bold text-neutral-400 block mb-1">
                  Working Weight ({settings.units})
                </label>
                <input
                  type="number"
                  value={workingWeight}
                  onChange={(e) => setWorkingWeight(parseFloat(e.target.value) || 0)}
                  className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold text-lg"
                  step="5"
                />
              </div>

              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
                <h4 className="text-xs font-bold text-neutral-300 uppercase tracking-wider">
                  Warm-Up Progression
                </h4>
                {[
                  { stage: 'Bar Only', reps: 10, weight: 20 },
                  { stage: '40% Target', reps: 5, weight: Math.round((workingWeight * 0.4) / 2.5) * 2.5 },
                  { stage: '60% Target', reps: 3, weight: Math.round((workingWeight * 0.6) / 2.5) * 2.5 },
                  { stage: '80% Target', reps: 2, weight: Math.round((workingWeight * 0.8) / 2.5) * 2.5 },
                  { stage: '90% Target', reps: 1, weight: Math.round((workingWeight * 0.9) / 2.5) * 2.5 },
                ].map((w, idx) => (
                  <div
                    key={idx}
                    className="flex items-center justify-between p-2.5 rounded-xl bg-[#141414] border border-[#222]"
                  >
                    <div>
                      <span className="text-xs font-bold text-white block">{w.stage}</span>
                      <span className="text-[10px] text-neutral-500 font-semibold">{w.reps} Reps</span>
                    </div>
                    <span className="text-base font-black text-[#D9A184] font-mono">
                      {w.weight} {settings.units}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* BMI Calculator */}
          {activeTool === 'bmi' && (
            <div className="space-y-4">
              <div className="bg-[#181818] border border-[#282828] rounded-3xl p-6 text-center shadow-xl">
                <span className="text-[11px] font-bold text-neutral-400 uppercase tracking-widest block mb-1">
                  Body Mass Index
                </span>
                <div className="text-5xl font-black text-white font-mono tracking-tight my-2">
                  {calculatedBMI}
                </div>
                <span className={`text-sm font-bold ${getBMICategory(calculatedBMI).color}`}>
                  {getBMICategory(calculatedBMI).label}
                </span>
              </div>

              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">Height (cm)</label>
                  <input
                    type="number"
                    value={heightCm}
                    onChange={(e) => setHeightCm(parseFloat(e.target.value) || 0)}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                  />
                </div>

                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">Weight (kg)</label>
                  <input
                    type="number"
                    value={weightKg}
                    onChange={(e) => setWeightKg(parseFloat(e.target.value) || 0)}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                  />
                </div>
              </div>
            </div>
          )}

          {/* TDEE & Macros Calculator */}
          {activeTool === 'cal' && (
            <div className="space-y-4">
              <div className="bg-[#181818] border border-[#282828] rounded-3xl p-6 text-center shadow-xl">
                <span className="text-[11px] font-bold text-neutral-400 uppercase tracking-widest block mb-1">
                  Daily Maintenance Calories
                </span>
                <div className="text-5xl font-black text-white font-mono tracking-tight my-2">
                  {tdee}{' '}
                  <span className="text-xl font-bold text-[#D9A184]">kcal</span>
                </div>
                <span className="text-xs text-neutral-400">Basal Metabolic Rate: {Math.round(bmr)} kcal</span>
              </div>

              {/* Goals */}
              <div className="grid grid-cols-3 gap-2">
                <div className="p-3 bg-[#181818] border border-[#282828] rounded-2xl text-center">
                  <span className="text-[10px] text-neutral-400 font-bold block mb-1">Fat Loss</span>
                  <span className="text-base font-black text-blue-400 font-mono">{tdee - 500}</span>
                </div>
                <div className="p-3 bg-[#181818] border border-[#282828] rounded-2xl text-center">
                  <span className="text-[10px] text-neutral-400 font-bold block mb-1">Maintain</span>
                  <span className="text-base font-black text-[#D9A184] font-mono">{tdee}</span>
                </div>
                <div className="p-3 bg-[#181818] border border-[#282828] rounded-2xl text-center">
                  <span className="text-[10px] text-neutral-400 font-bold block mb-1">Muscle Gain</span>
                  <span className="text-base font-black text-green-400 font-mono">{tdee + 300}</span>
                </div>
              </div>

              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
                <div className="grid grid-cols-2 gap-2">
                  <div>
                    <label className="text-xs font-bold text-neutral-400 block mb-1">Age</label>
                    <input
                      type="number"
                      value={age}
                      onChange={(e) => setAge(parseInt(e.target.value) || 20)}
                      className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                    />
                  </div>
                  <div>
                    <label className="text-xs font-bold text-neutral-400 block mb-1">Gender</label>
                    <select
                      value={gender}
                      onChange={(e) => setGender(e.target.value as 'male' | 'female')}
                      className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold text-xs"
                    >
                      <option value="male">Male</option>
                      <option value="female">Female</option>
                    </select>
                  </div>
                </div>

                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">Activity Level</label>
                  <select
                    value={activity}
                    onChange={(e) => setActivity(parseFloat(e.target.value))}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold text-xs"
                  >
                    <option value={1.2}>Sedentary (desk job)</option>
                    <option value={1.375}>Light (1-3 days/week)</option>
                    <option value={1.55}>Moderate (3-5 days/week)</option>
                    <option value={1.725}>Heavy (6-7 days/week)</option>
                  </select>
                </div>
              </div>
            </div>
          )}

          {/* Navy Body Fat Calculator */}
          {activeTool === 'bf' && (
            <div className="space-y-4">
              <div className="bg-[#181818] border border-[#282828] rounded-3xl p-6 text-center shadow-xl">
                <span className="text-[11px] font-bold text-neutral-400 uppercase tracking-widest block mb-1">
                  Estimated Body Fat
                </span>
                <div className="text-5xl font-black text-white font-mono tracking-tight my-2">
                  {bodyFatPct}%
                </div>
                <span className="text-xs text-neutral-400">US Navy Method</span>
              </div>

              <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">Neck (cm)</label>
                  <input
                    type="number"
                    value={neckCm}
                    onChange={(e) => setNeckCm(parseFloat(e.target.value) || 0)}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                  />
                </div>

                <div>
                  <label className="text-xs font-bold text-neutral-400 block mb-1">
                    Waist at Navel (cm)
                  </label>
                  <input
                    type="number"
                    value={waistCm}
                    onChange={(e) => setWaistCm(parseFloat(e.target.value) || 0)}
                    className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                  />
                </div>

                {gender === 'female' && (
                  <div>
                    <label className="text-xs font-bold text-neutral-400 block mb-1">Hips (cm)</label>
                    <input
                      type="number"
                      value={hipCm}
                      onChange={(e) => setHipCm(parseFloat(e.target.value) || 0)}
                      className="w-full bg-[#121212] border border-[#2E2E2E] rounded-xl px-3 py-2 text-white font-bold"
                    />
                  </div>
                )}
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  );
};
