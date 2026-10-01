import React, { useEffect, useState } from 'react';
import { Dumbbell } from 'lucide-react';
import { getAssetUrl } from '../utils/assets';

interface ExerciseArtProps {
  slug?: string;
  className?: string;
  height?: number | string;
  loop?: boolean;
}

const artCache = new Map<string, string[]>();

export const ExerciseArt: React.FC<ExerciseArtProps> = ({
  slug,
  className = '',
  height = 180,
  loop = true,
}) => {
  const [frames, setFrames] = useState<string[]>([]);
  const [frameIndex, setFrameIndex] = useState(0);
  const [direction, setDirection] = useState(1);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!slug) {
      setFrames([]);
      return;
    }

    if (artCache.has(slug)) {
      setFrames(artCache.get(slug)!);
      setFrameIndex(0);
      return;
    }

    let isMounted = true;
    setLoading(true);

    fetch(getAssetUrl(`assets/art/${slug}.txt`))
      .then((res) => {
        if (!res.ok) throw new Error('Art not found');
        return res.text();
      })
      .then((text) => {
        if (!isMounted) return;
        const validFrames = text
          .split('\n')
          .map((line) => line.trim())
          .filter((line) => line.length > 0);

        if (validFrames.length > 0) {
          artCache.set(slug, validFrames);
          setFrames(validFrames);
          setFrameIndex(0);
        }
      })
      .catch(() => {
        if (isMounted) setFrames([]);
      })
      .finally(() => {
        if (isMounted) setLoading(false);
      });

    return () => {
      isMounted = false;
    };
  }, [slug]);

  // Frame animation loop (ping-pong forward and back)
  useEffect(() => {
    if (!loop || frames.length <= 1) return;

    const interval = setInterval(() => {
      setFrameIndex((prev) => {
        let next = prev + direction;
        if (next >= frames.length) {
          setDirection(-1);
          next = frames.length - 2;
        } else if (next < 0) {
          setDirection(1);
          next = 1;
        }
        return Math.max(0, Math.min(frames.length - 1, next));
      });
    }, 120);

    return () => clearInterval(interval);
  }, [loop, frames.length, direction]);

  if (frames.length === 0 || loading) {
    return (
      <div
        style={{ height }}
        className={`w-full bg-[#181818] rounded-2xl flex flex-col items-center justify-center text-neutral-600 border border-[#2B2B2B] ${className}`}
      >
        <Dumbbell className="w-10 h-10 mb-1 opacity-40 animate-pulse" />
        <span className="text-[11px] font-medium tracking-wider uppercase opacity-40">
          {loading ? 'Loading...' : 'Exercise Visual'}
        </span>
      </div>
    );
  }

  const currentPath = frames[frameIndex] || frames[0];

  return (
    <div
      style={{ height }}
      className={`w-full bg-[#161514] rounded-2xl flex items-center justify-center p-3 border border-[#282624] overflow-hidden shadow-inner ${className}`}
    >
      <svg
        viewBox="-50 -50 600 600"
        className="w-full h-full text-white fill-current transition-all duration-75"
        style={{ filter: 'drop-shadow(0 2px 8px rgba(0,0,0,0.5))' }}
      >
        <path d={currentPath} fillRule="evenodd" />
      </svg>
    </div>
  );
};
