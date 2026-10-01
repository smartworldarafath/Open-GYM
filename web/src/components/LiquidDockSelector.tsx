import React, { useState, useRef, useEffect } from 'react';

interface LiquidDockSelectorProps<T extends string> {
  items: { id: T; label: string; icon?: React.ComponentType<{ className?: string }> }[];
  selected: T;
  onSelect: (id: T) => void;
  className?: string;
  pillColor?: string;
}

export function LiquidDockSelector<T extends string>({
  items,
  selected,
  onSelect,
  className = '',
  pillColor = '#D9A184',
}: LiquidDockSelectorProps<T>) {
  const containerRef = useRef<HTMLDivElement>(null);
  const [indicatorStyle, setIndicatorStyle] = useState<{
    left: number;
    width: number;
    scaleX: number;
  }>({ left: 0, width: 0, scaleX: 1 });

  const prevIndexRef = useRef<number>(0);
  const selectedIndex = Math.max(0, items.findIndex((i) => i.id === selected));

  useEffect(() => {
    if (!containerRef.current) return;
    const buttons = containerRef.current.querySelectorAll<HTMLButtonElement>('button');
    const targetBtn = buttons[selectedIndex];
    if (!targetBtn) return;

    const fromIdx = prevIndexRef.current;
    const toIdx = selectedIndex;
    const isMoving = fromIdx !== toIdx;
    prevIndexRef.current = toIdx;

    const targetLeft = targetBtn.offsetLeft;
    const targetWidth = targetBtn.offsetWidth;

    if (isMoving) {
      // Elastic stretch animation
      setIndicatorStyle({
        left: targetLeft,
        width: targetWidth,
        scaleX: 1.18, // Stretch when moving
      });

      const timer = setTimeout(() => {
        setIndicatorStyle({
          left: targetLeft,
          width: targetWidth,
          scaleX: 1, // Settle
        });
      }, 260);

      return () => clearTimeout(timer);
    } else {
      setIndicatorStyle({
        left: targetLeft,
        width: targetWidth,
        scaleX: 1,
      });
    }
  }, [selectedIndex, items.length]);

  return (
    <div
      ref={containerRef}
      className={`relative flex items-center bg-[#181615] border border-[#2B2826] p-1 rounded-2xl select-none ${className}`}
    >
      {/* Liquid Fluid Sliding Indicator */}
      <div
        className="absolute top-1 bottom-1 rounded-xl transition-all duration-300 ease-[cubic-bezier(0.34,1.56,0.64,1)] shadow-md pointer-events-none"
        style={{
          left: `${indicatorStyle.left}px`,
          width: `${indicatorStyle.width}px`,
          backgroundColor: pillColor,
          transform: `scaleX(${indicatorStyle.scaleX})`,
        }}
      />

      {items.map((item) => {
        const isSelected = item.id === selected;
        const Icon = item.icon;
        return (
          <button
            key={item.id}
            onClick={() => onSelect(item.id)}
            className={`relative z-10 flex-1 px-3 py-1.5 rounded-xl font-bold text-xs flex items-center justify-center gap-1.5 transition-colors duration-200 ${
              isSelected ? 'text-[#140D09]' : 'text-neutral-400 hover:text-white'
            }`}
          >
            {Icon && <Icon className={`w-3.5 h-3.5 ${isSelected ? 'stroke-[2.5]' : ''}`} />}
            <span>{item.label}</span>
          </button>
        );
      })}
    </div>
  );
}
