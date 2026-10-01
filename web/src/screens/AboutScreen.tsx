import React from 'react';
import { useGymStore } from '../store/useGymStore';
import { ChevronLeft, Shield, Heart, ExternalLink } from 'lucide-react';
import { getAssetUrl } from '../utils/assets';


export const AboutScreen: React.FC = () => {
  const { popRoute } = useGymStore();

  return (
    <div className="max-w-3xl mx-auto space-y-6 pb-24 animate-in fade-in duration-200">
      <div className="flex items-center gap-3">
        <button
          onClick={() => popRoute()}
          className="p-2 rounded-xl bg-[#1C1C1C] hover:bg-[#2B2B2B] text-neutral-300 transition-all flex items-center justify-center active:scale-95"
        >
          <ChevronLeft className="w-5 h-5" />
        </button>
        <h2 className="text-xl font-black text-white tracking-tight">About Open-GYM</h2>
      </div>

      {/* Hero Badge */}
      <div className="bg-[#181818] border border-[#282828] rounded-3xl p-6 text-center shadow-xl space-y-3">
        <img
          src={getAssetUrl('assets/icon/ic_1024.png')}
          alt="Open-GYM"
          className="w-16 h-16 rounded-2xl mx-auto shadow-lg shadow-black/80"
          onError={(e) => {
            (e.target as HTMLElement).style.display = 'none';
          }}
        />
        <div>
          <h3 className="text-2xl font-black text-white tracking-tight">Open-GYM</h3>
          <p className="text-xs text-[#D9A184] font-bold mt-0.5">Lift. Log it. Grow.</p>
        </div>
        <p className="text-xs text-neutral-400 leading-relaxed max-w-xs mx-auto">
          An offline, ad-free, privacy-first gym & workout companion.
        </p>
      </div>

      {/* Key Principles */}
      <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3">
        <h4 className="text-xs font-bold text-neutral-300 uppercase tracking-wider">
          The Trust Boundary
        </h4>

        <div className="space-y-2 text-xs text-neutral-300">
          <div className="flex gap-2">
            <Shield className="w-4 h-4 text-[#D9A184] flex-shrink-0 mt-0.5" />
            <p>
              <strong>100% Local & Private:</strong> Zero accounts, zero analytics SDKs, zero
              remote trackers. Everything stays stored on your device.
            </p>
          </div>

          <div className="flex gap-2">
            <Heart className="w-4 h-4 text-[#D9A184] flex-shrink-0 mt-0.5" />
            <p>
              <strong>Built for the Gym Floor:</strong> Large tap targets, dark-mode contrast,
              auto-ringing rest alarms, and resilient offline state.
            </p>
          </div>
        </div>
      </div>

      {/* Source Repo & License */}
      <div className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-3 text-xs">
        <h4 className="font-bold text-neutral-300 uppercase tracking-wider text-[11px]">
          Open Source & Licensing
        </h4>
        <div className="flex justify-between items-center py-1 border-b border-[#242424]">
          <span className="text-neutral-400">Software License</span>
          <span className="font-mono text-white font-bold">GPL-3.0 License</span>
        </div>
        <div className="flex justify-between items-center py-1 border-b border-[#242424]">
          <span className="text-neutral-400">Art Assets</span>
          <span className="font-mono text-white font-bold">CC BY-SA 4.0</span>
        </div>
        <div className="flex justify-between items-center py-1">
          <span className="text-neutral-400">GitHub Repository</span>
          <a
            href="https://github.com/smartworldarafath/Open-GYM"
            target="_blank"
            rel="noopener noreferrer"
            className="text-[#D9A184] font-bold flex items-center gap-1 hover:underline"
          >
            smartworldarafath/Open-GYM <ExternalLink className="w-3 h-3" />
          </a>
        </div>
      </div>
    </div>
  );
};
