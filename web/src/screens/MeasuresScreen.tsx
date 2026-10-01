import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { Scale, Plus, Trash2, Calendar, TrendingDown, TrendingUp } from 'lucide-react';

export const MeasuresScreen: React.FC = () => {
  const { bodyweight, addBodyweight, measures, addBodyMeasure, settings } = useGymStore();

  const [activeTab, setActiveTab] = useState<'weight' | 'girth'>('weight');
  const [newWeight, setNewWeight] = useState(76.5);
  const [selectedPart, setSelectedPart] = useState('waist');
  const [newMeasureVal, setNewMeasureVal] = useState(82);

  const parts = [
    { id: 'waist', label: 'Waist' },
    { id: 'chest', label: 'Chest' },
    { id: 'bicepsL', label: 'Left Arm' },
    { id: 'bicepsR', label: 'Right Arm' },
    { id: 'thighL', label: 'Left Thigh' },
    { id: 'thighR', label: 'Right Thigh' },
    { id: 'calves', label: 'Calves' },
    { id: 'neck', label: 'Neck' },
  ];

  const handleAddWeight = (e: React.FormEvent) => {
    e.preventDefault();
    if (!newWeight) return;
    addBodyweight(newWeight);
  };

  const handleAddMeasure = (e: React.FormEvent) => {
    e.preventDefault();
    if (!newMeasureVal) return;
    addBodyMeasure(selectedPart, newMeasureVal);
  };

  const latestWeight = bodyweight[0]?.kg || 75;
  const previousWeight = bodyweight[1]?.kg || latestWeight;
  const diff = Math.round((latestWeight - previousWeight) * 10) / 10;

  return (
    <div className="max-w-4xl mx-auto space-y-6 pb-24 animate-in fade-in duration-200">
      <div>
        <h2 className="text-xl font-black text-white tracking-tight">Body Measurements</h2>
        <p className="text-xs text-neutral-400 mt-0.5">
          Track bodyweight trends and anatomical circumferences
        </p>
      </div>

      {/* Tab Switcher */}
      <div className="flex bg-[#161616] p-1 rounded-2xl border border-[#262626]">
        <button
          onClick={() => setActiveTab('weight')}
          className={`flex-1 py-2 text-xs font-bold rounded-xl transition-all ${
            activeTab === 'weight' ? 'bg-[#262626] text-white shadow' : 'text-neutral-400'
          }`}
        >
          Bodyweight ({bodyweight.length})
        </button>
        <button
          onClick={() => setActiveTab('girth')}
          className={`flex-1 py-2 text-xs font-bold rounded-xl transition-all ${
            activeTab === 'girth' ? 'bg-[#262626] text-white shadow' : 'text-neutral-400'
          }`}
        >
          Girths ({measures.length})
        </button>
      </div>

      {activeTab === 'weight' ? (
        <div className="space-y-4">
          {/* Current Weight Banner */}
          <div className="bg-[#181818] border border-[#282828] rounded-3xl p-5 flex items-center justify-between shadow-xl">
            <div>
              <span className="text-xs text-neutral-400 font-semibold block mb-1">Latest Weight</span>
              <div className="text-3xl font-black text-white font-mono">
                {latestWeight} <span className="text-sm font-bold text-[#D9A184]">{settings.units}</span>
              </div>
            </div>

            <div className="text-right">
              <span className="text-xs text-neutral-400 block mb-1">Trend</span>
              <div
                className={`text-sm font-bold font-mono flex items-center gap-1 ${
                  diff < 0 ? 'text-blue-400' : diff > 0 ? 'text-amber-400' : 'text-neutral-400'
                }`}
              >
                {diff > 0 ? `+${diff}` : diff} {settings.units}
              </div>
            </div>
          </div>

          {/* Quick Add Form */}
          <form
            onSubmit={handleAddWeight}
            className="bg-[#181818] border border-[#282828] rounded-2xl p-3 flex gap-2"
          >
            <input
              type="number"
              step="0.1"
              value={newWeight}
              onChange={(e) => setNewWeight(parseFloat(e.target.value) || 0)}
              className="bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-2 text-white font-bold text-sm flex-1 focus:outline-none focus:border-[#D9A184]"
              placeholder={`Weight in ${settings.units}`}
            />
            <button
              type="submit"
              className="px-4 py-2 bg-[#D9A184] text-[#140D09] font-black text-xs rounded-xl flex items-center gap-1 active:scale-95 transition-all"
            >
              <Plus className="w-4 h-4" /> Log
            </button>
          </form>

          {/* Log List */}
          <div className="space-y-2">
            {bodyweight.map((entry) => (
              <div
                key={entry.id}
                className="bg-[#181818] border border-[#242424] rounded-xl p-3 flex items-center justify-between text-xs"
              >
                <span className="text-neutral-400">
                  {new Date(entry.date).toLocaleDateString('en-US', {
                    month: 'short',
                    day: 'numeric',
                    year: 'numeric',
                  })}
                </span>
                <span className="font-mono font-black text-white text-sm">
                  {entry.kg} {settings.units}
                </span>
              </div>
            ))}
          </div>
        </div>
      ) : (
        /* Circumferences */
        <div className="space-y-4">
          <form
            onSubmit={handleAddMeasure}
            className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3"
          >
            <div className="grid grid-cols-2 gap-2">
              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">Body Region</label>
                <select
                  value={selectedPart}
                  onChange={(e) => setSelectedPart(e.target.value)}
                  className="w-full bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-2 text-xs text-white"
                >
                  {parts.map((p) => (
                    <option key={p.id} value={p.id}>
                      {p.label}
                    </option>
                  ))}
                </select>
              </div>

              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">Size (cm)</label>
                <input
                  type="number"
                  step="0.5"
                  value={newMeasureVal}
                  onChange={(e) => setNewMeasureVal(parseFloat(e.target.value) || 0)}
                  className="w-full bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-2 text-sm text-white font-bold"
                />
              </div>
            </div>

            <button
              type="submit"
              className="w-full py-2.5 rounded-xl bg-[#D9A184] text-[#140D09] font-black text-xs flex items-center justify-center gap-1 active:scale-95"
            >
              <Plus className="w-4 h-4" /> Save Measurement
            </button>
          </form>

          <div className="space-y-2">
            {measures.map((m) => (
              <div
                key={m.id}
                className="bg-[#181818] border border-[#242424] rounded-xl p-3 flex items-center justify-between text-xs"
              >
                <div>
                  <span className="font-bold text-white capitalize block">
                    {parts.find((p) => p.id === m.part)?.label || m.part}
                  </span>
                  <span className="text-[10px] text-neutral-500">
                    {new Date(m.date).toLocaleDateString()}
                  </span>
                </div>
                <span className="font-mono font-black text-white text-sm">{m.val} cm</span>
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
};
