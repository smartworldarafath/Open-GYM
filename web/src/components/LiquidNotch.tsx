import React, { useEffect, useState, useRef } from 'react';
import { Sparkles, CheckCircle2, Clock, X, Trophy } from 'lucide-react';
import { getAssetUrl } from '../utils/assets';

export interface NotchToastRequest {
  id: string;
  title: string;
  subtitle?: string;
  badgeId?: string;
  accent?: string;
  durationMs?: number;
  onTap?: () => void;
}

interface Frame {
  width: number;
  height: number;
  y: number;
  neck: number;
  shoulder: number;
  opacity: number;
}

const ENTER_FRAMES: [number, Frame][] = [
  [0, { width: 0, height: 0, y: 0, neck: 0, shoulder: 0, opacity: 0 }],
  [0.08, { width: 14, height: 10, y: 6, neck: 9, shoulder: 36, opacity: 0 }],
  [0.16, { width: 24, height: 19, y: 14, neck: 12, shoulder: 31, opacity: 0 }],
  [0.24, { width: 29, height: 27, y: 22, neck: 10, shoulder: 28, opacity: 0 }],
  [0.32, { width: 31, height: 36, y: 32, neck: 7, shoulder: 25, opacity: 0 }],
  [0.40, { width: 35, height: 44, y: 44, neck: 3.5, shoulder: 21, opacity: 0.1 }],
  [0.48, { width: 51, height: 57, y: 56, neck: 1, shoulder: 14, opacity: 0.25 }],
  [0.53, { width: 69, height: 66, y: 62, neck: 0, shoulder: 0, opacity: 0.45 }],
  [0.60, { width: 100, height: 72, y: 68, neck: 0, shoulder: 0, opacity: 0.65 }],
  [0.68, { width: 160, height: 69, y: 70, neck: 0, shoulder: 0, opacity: 0.82 }],
  [0.76, { width: 220, height: 61, y: 69, neck: 0, shoulder: 0, opacity: 0.92 }],
  [0.86, { width: 280, height: 56, y: 66, neck: 0, shoulder: 0, opacity: 0.98 }],
  [1.0, { width: 320, height: 54, y: 64, neck: 0, shoulder: 0, opacity: 1.0 }],
];

function lerp(a: number, b: number, t: number) {
  return a + (b - a) * t;
}

function sampleFrame(progress: number): Frame {
  const p = Math.max(0, Math.min(1, progress));
  for (let i = 1; i < ENTER_FRAMES.length; i++) {
    if (p <= ENTER_FRAMES[i][0]) {
      const a = ENTER_FRAMES[i - 1];
      const b = ENTER_FRAMES[i];
      const t = (p - a[0]) / (b[0] - a[0]);
      return {
        width: lerp(a[1].width, b[1].width, t),
        height: lerp(a[1].height, b[1].height, t),
        y: lerp(a[1].y, b[1].y, t),
        neck: lerp(a[1].neck, b[1].neck, t),
        shoulder: lerp(a[1].shoulder, b[1].shoulder, t),
        opacity: lerp(a[1].opacity, b[1].opacity, t),
      };
    }
  }
  return ENTER_FRAMES[ENTER_FRAMES.length - 1][1];
}

interface LiquidNotchProps {
  toast: NotchToastRequest | null;
  onDismiss: () => void;
}

export const LiquidNotch: React.FC<LiquidNotchProps> = ({ toast, onDismiss }) => {
  const [animProgress, setAnimProgress] = useState(0);
  const [exiting, setExiting] = useState(false);
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const requestRef = useRef<number>(0);
  const startTimeRef = useRef<number>(0);

  useEffect(() => {
    if (!toast) {
      setAnimProgress(0);
      setExiting(false);
      return;
    }

    setExiting(false);
    startTimeRef.current = performance.now();

    const enterDuration = 600;
    const animateEnter = (now: number) => {
      const elapsed = now - startTimeRef.current;
      const p = Math.min(1, elapsed / enterDuration);
      // easeOutCubic
      const eased = 1 - Math.pow(1 - p, 3);
      setAnimProgress(eased);

      if (p < 1) {
        requestRef.current = requestAnimationFrame(animateEnter);
      }
    };

    requestRef.current = requestAnimationFrame(animateEnter);

    const autoDismiss = setTimeout(() => {
      startExit();
    }, toast.durationMs || 4200);

    return () => {
      cancelAnimationFrame(requestRef.current);
      clearTimeout(autoDismiss);
    };
  }, [toast?.id]);

  const startExit = () => {
    setExiting(true);
    startTimeRef.current = performance.now();
    const exitDuration = 400;

    const animateExit = (now: number) => {
      const elapsed = now - startTimeRef.current;
      const p = Math.min(1, elapsed / exitDuration);
      // easeInCubic
      const eased = Math.pow(p, 3);
      setAnimProgress(1 - eased);

      if (p < 1) {
        requestRef.current = requestAnimationFrame(animateExit);
      } else {
        onDismiss();
      }
    };

    requestRef.current = requestAnimationFrame(animateExit);
  };

  const frame = sampleFrame(animProgress);

  // Draw organic fluid droplet on Canvas
  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas || animProgress <= 0) return;
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    const dpr = window.devicePixelRatio || 1;
    const cw = canvas.clientWidth;
    const ch = canvas.clientHeight;
    canvas.width = cw * dpr;
    canvas.height = ch * dpr;
    ctx.scale(dpr, dpr);

    ctx.clearRect(0, 0, cw, ch);

    const centerX = cw / 2;
    const sourceWidth = 40;
    const sourceHeight = 12;
    const sourceY = 0;

    // Draw Source Notch (Top Camera Notch / Ceiling anchor)
    ctx.beginPath();
    ctx.roundRect(
      centerX - sourceWidth / 2,
      sourceY,
      sourceWidth,
      sourceHeight,
      sourceHeight / 2
    );
    ctx.fillStyle = '#000000';
    ctx.fill();

    if (frame.width <= 0) return;

    const targetW = frame.width;
    const targetH = frame.height;
    const targetY = frame.y;
    const targetX = centerX - targetW / 2;
    const targetRadius = Math.min(targetH / 2, 28);

    // If stretching/dropping (fluid neck bridge)
    if (frame.neck > 0) {
      const neck = frame.neck;
      const shoulder = frame.shoulder;
      const waistY = sourceY + (targetY - sourceY) * 0.55;
      const attachX = targetW * 0.42;

      ctx.beginPath();
      // Left shoulder
      ctx.moveTo(centerX - shoulder, sourceY + sourceHeight);
      ctx.bezierCurveTo(
        centerX - shoulder * 0.4,
        sourceY + sourceHeight,
        centerX - neck,
        waistY - 4,
        centerX - neck,
        waistY
      );
      // Left waist to drop
      ctx.bezierCurveTo(
        centerX - neck,
        waistY + 6,
        centerX - attachX,
        targetY - 2,
        centerX - attachX,
        targetY + targetH / 2
      );
      // Bottom of drop
      ctx.lineTo(centerX + attachX, targetY + targetH / 2);
      // Right waist
      ctx.bezierCurveTo(
        centerX + attachX,
        targetY - 2,
        centerX + neck,
        waistY + 6,
        centerX + neck,
        waistY
      );
      // Right waist to shoulder
      ctx.bezierCurveTo(
        centerX + neck,
        waistY - 4,
        centerX + shoulder * 0.4,
        sourceY + sourceHeight,
        centerX + shoulder,
        sourceY + sourceHeight
      );
      ctx.closePath();

      const bridgeGrad = ctx.createLinearGradient(centerX, sourceY, centerX, targetY + targetH);
      bridgeGrad.addColorStop(0, '#000000');
      bridgeGrad.addColorStop(1, '#1A1817');
      ctx.fillStyle = bridgeGrad;
      ctx.fill();
    }

    // Main Liquid Drop Pill Body
    ctx.beginPath();
    ctx.roundRect(targetX, targetY, targetW, targetH, targetRadius);
    const dropGrad = ctx.createLinearGradient(centerX, targetY, centerX, targetY + targetH);
    dropGrad.addColorStop(0, '#1E1B18');
    dropGrad.addColorStop(1, '#11100F');
    ctx.fillStyle = dropGrad;
    ctx.shadowColor = 'rgba(217, 161, 132, 0.25)';
    ctx.shadowBlur = 18;
    ctx.shadowOffsetY = 6;
    ctx.fill();

    // Subtle golden highlight border around fluid pill
    if (frame.opacity > 0.4) {
      ctx.lineWidth = 1.2;
      ctx.strokeStyle = `rgba(217, 161, 132, ${0.45 * frame.opacity})`;
      ctx.stroke();
    }
  }, [animProgress, frame]);

  if (!toast || animProgress <= 0.01) return null;

  return (
    <div className="fixed top-0 left-0 right-0 z-50 pointer-events-none flex justify-center">
      <div className="relative w-full max-w-md h-36 flex justify-center">
        {/* Organic Liquid Canvas */}
        <canvas
          ref={canvasRef}
          className="absolute inset-0 w-full h-full pointer-events-none"
        />

        {/* Content Inside Morphing Liquid Drop */}
        <div
          onClick={() => {
            if (toast.onTap) toast.onTap();
            startExit();
          }}
          style={{
            transform: `translateY(${frame.y}px)`,
            width: `${frame.width}px`,
            height: `${frame.height}px`,
            opacity: frame.opacity,
          }}
          className="absolute pointer-events-auto cursor-pointer flex items-center justify-between px-3.5 select-none overflow-hidden"
        >
          <div className="flex items-center gap-2.5 min-w-0">
            {toast.badgeId ? (
              <img
                src={getAssetUrl(`assets/badges/${toast.badgeId}.webp`)}
                alt=""
                className="w-8 h-8 object-contain drop-shadow shrink-0 animate-spin-slow"
              />
            ) : (
              <div
                className="w-8 h-8 rounded-full flex items-center justify-center shrink-0 border"
                style={{
                  backgroundColor: `${toast.accent || '#D9A184'}22`,
                  borderColor: `${toast.accent || '#D9A184'}55`,
                }}
              >
                <Sparkles className="w-4 h-4" style={{ color: toast.accent || '#D9A184' }} />
              </div>
            )}

            <div className="min-w-0">
              <h4 className="text-xs font-black text-white truncate leading-tight tracking-tight">
                {toast.title}
              </h4>
              {toast.subtitle && (
                <p className="text-[10px] text-neutral-400 truncate font-medium">
                  {toast.subtitle}
                </p>
              )}
            </div>
          </div>

          <button
            onClick={(e) => {
              e.stopPropagation();
              startExit();
            }}
            className="p-1 rounded-full text-neutral-400 hover:text-white transition-colors shrink-0 ml-1.5"
          >
            <X className="w-3.5 h-3.5" />
          </button>
        </div>
      </div>
    </div>
  );
};
