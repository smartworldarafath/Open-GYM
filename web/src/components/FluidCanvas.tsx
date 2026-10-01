import React, { useEffect, useRef } from 'react';

interface Particle {
  x: number;
  y: number;
  vx: number;
  vy: number;
  radius: number;
  alpha: number;
  targetAlpha: number;
  life: number;
  maxLife: number;
  color: string;
}

export const FluidCanvas: React.FC = () => {
  const canvasRef = useRef<HTMLCanvasElement>(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    let width = (canvas.width = window.innerWidth);
    let height = (canvas.height = window.innerHeight);

    const handleResize = () => {
      if (!canvas) return;
      width = canvas.width = window.innerWidth;
      height = canvas.height = window.innerHeight;
    };
    window.addEventListener('resize', handleResize);

    const particles: Particle[] = [];
    const colors = [
      'rgba(217, 161, 132,', // Terracotta
      'rgba(180, 99, 44,',   // Warm Ember
      'rgba(143, 163, 119,',  // Moss Green
      'rgba(255, 122, 0,',   // Flame Orange
    ];

    let mouseX = width / 2;
    let mouseY = height / 3;
    let targetX = mouseX;
    let targetY = mouseY;
    let isMoving = false;
    let moveTimeout: ReturnType<typeof setTimeout> | undefined;

    const handleMouseMove = (e: MouseEvent) => {
      targetX = e.clientX;
      targetY = e.clientY;
      isMoving = true;
      clearTimeout(moveTimeout);
      moveTimeout = setTimeout(() => {
        isMoving = false;
      }, 100);

      // Spawn fluid ripples on motion
      if (Math.random() < 0.35) {
        spawnRipple(e.clientX, e.clientY);
      }
    };

    const handleClick = (e: MouseEvent) => {
      for (let i = 0; i < 5; i++) {
        spawnRipple(e.clientX + (Math.random() - 0.5) * 30, e.clientY + (Math.random() - 0.5) * 30, 2.5);
      }
    };

    window.addEventListener('mousemove', handleMouseMove);
    window.addEventListener('click', handleClick);

    const spawnRipple = (x: number, y: number, intensity = 1) => {
      if (particles.length > 30) particles.shift();
      const color = colors[Math.floor(Math.random() * colors.length)];
      particles.push({
        x,
        y,
        vx: (Math.random() - 0.5) * 0.8 * intensity,
        vy: (Math.random() - 0.5) * 0.8 * intensity,
        radius: Math.random() * 40 + 60 * intensity,
        alpha: 0.18 * intensity,
        targetAlpha: 0,
        life: 0,
        maxLife: Math.random() * 80 + 100,
        color,
      });
    };

    // Ambient floating fluid nodes
    const ambientBlobs = [
      { x: width * 0.2, y: height * 0.3, radius: 260, color: 'rgba(217, 161, 132, 0.035)', angle: 0, speed: 0.003 },
      { x: width * 0.8, y: height * 0.4, radius: 320, color: 'rgba(180, 99, 44, 0.025)', angle: Math.PI, speed: 0.002 },
      { x: width * 0.5, y: height * 0.75, radius: 280, color: 'rgba(217, 161, 132, 0.03)', angle: Math.PI / 2, speed: 0.0025 },
    ];

    let animId: number;
    const render = () => {
      ctx.clearRect(0, 0, width, height);

      // Smooth cursor lerp
      mouseX += (targetX - mouseX) * 0.08;
      mouseY += (targetY - mouseY) * 0.08;

      // Draw subtle interactive cursor fluid aura
      const auraGrad = ctx.createRadialGradient(mouseX, mouseY, 0, mouseX, mouseY, 220);
      auraGrad.addColorStop(0, 'rgba(217, 161, 132, 0.06)');
      auraGrad.addColorStop(0.5, 'rgba(217, 161, 132, 0.02)');
      auraGrad.addColorStop(1, 'rgba(0, 0, 0, 0)');
      ctx.fillStyle = auraGrad;
      ctx.beginPath();
      ctx.arc(mouseX, mouseY, 220, 0, Math.PI * 2);
      ctx.fill();

      // Render ambient fluid masses
      ambientBlobs.forEach((blob) => {
        blob.angle += blob.speed;
        const curX = blob.x + Math.sin(blob.angle) * 45;
        const curY = blob.y + Math.cos(blob.angle * 0.8) * 35;
        const grad = ctx.createRadialGradient(curX, curY, 0, curX, curY, blob.radius);
        grad.addColorStop(0, blob.color);
        grad.addColorStop(1, 'rgba(0,0,0,0)');
        ctx.fillStyle = grad;
        ctx.beginPath();
        ctx.arc(curX, curY, blob.radius, 0, Math.PI * 2);
        ctx.fill();
      });

      // Update & render ripple particles
      for (let i = particles.length - 1; i >= 0; i--) {
        const p = particles[i];
        p.life++;
        p.x += p.vx;
        p.y += p.vy;
        p.radius += 0.5;

        const progress = p.life / p.maxLife;
        const currentAlpha = Math.max(0, p.alpha * (1 - progress));

        if (progress >= 1 || currentAlpha <= 0.005) {
          particles.splice(i, 1);
          continue;
        }

        const grad = ctx.createRadialGradient(p.x, p.y, 0, p.x, p.y, p.radius);
        grad.addColorStop(0, `${p.color} ${currentAlpha})`);
        grad.addColorStop(1, `${p.color} 0)`);

        ctx.fillStyle = grad;
        ctx.beginPath();
        ctx.arc(p.x, p.y, p.radius, 0, Math.PI * 2);
        ctx.fill();
      }

      animId = requestAnimationFrame(render);
    };

    animId = requestAnimationFrame(render);

    return () => {
      cancelAnimationFrame(animId);
      window.removeEventListener('resize', handleResize);
      window.removeEventListener('mousemove', handleMouseMove);
      window.removeEventListener('click', handleClick);
      clearTimeout(moveTimeout);
    };
  }, []);

  return (
    <canvas
      ref={canvasRef}
      className="fixed inset-0 pointer-events-none z-0"
      style={{ opacity: 0.9 }}
    />
  );
};
