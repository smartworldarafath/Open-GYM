import { getAssetUrl } from '../utils/assets';

class SoundService {
  private ctx: AudioContext | null = null;
  private audioEl: HTMLAudioElement | null = null;

  private initCtx() {
    if (!this.ctx && typeof window !== 'undefined') {
      const AudioCtx = window.AudioContext || (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext;
      if (AudioCtx) {
        this.ctx = new AudioCtx();
      }
    }
    if (this.ctx && this.ctx.state === 'suspended') {
      this.ctx.resume().catch(() => {});
    }
  }

  playRestComplete(enabled: boolean = true) {
    if (!enabled) return;
    try {
      if (!this.audioEl && typeof Audio !== 'undefined') {
        this.audioEl = new Audio(getAssetUrl('assets/audio/rest_over.wav'));
      }
      if (this.audioEl) {
        this.audioEl.currentTime = 0;
        this.audioEl.play().catch(() => {
          this.playBeepBell();
        });
        return;
      }
    } catch {
      this.playBeepBell();
    }
    this.playBeepBell();
  }

  playBeepBell() {
    try {
      this.initCtx();
      if (!this.ctx) return;
      const now = this.ctx.currentTime;
      
      // Dual-tone gym bell
      [880, 1320, 1760].forEach((freq, i) => {
        if (!this.ctx) return;
        const osc = this.ctx.createOscillator();
        const gain = this.ctx.createGain();
        osc.type = 'sine';
        osc.frequency.setValueAtTime(freq, now + i * 0.12);
        gain.gain.setValueAtTime(0.25, now + i * 0.12);
        gain.gain.exponentialRampToValueAtTime(0.001, now + i * 0.12 + 0.6);
        osc.connect(gain);
        gain.connect(this.ctx.destination);
        osc.start(now + i * 0.12);
        osc.stop(now + i * 0.12 + 0.65);
      });
    } catch (_) {}
  }

  playTick(enabled: boolean = true) {
    if (!enabled) return;
    try {
      this.initCtx();
      if (!this.ctx) return;
      const now = this.ctx.currentTime;
      const osc = this.ctx.createOscillator();
      const gain = this.ctx.createGain();
      osc.type = 'triangle';
      osc.frequency.setValueAtTime(580, now);
      gain.gain.setValueAtTime(0.12, now);
      gain.gain.exponentialRampToValueAtTime(0.001, now + 0.08);
      osc.connect(gain);
      gain.connect(this.ctx.destination);
      osc.start(now);
      osc.stop(now + 0.09);
    } catch (_) {}
  }

  playCheer(enabled: boolean = true) {
    if (!enabled) return;
    try {
      this.initCtx();
      if (!this.ctx) return;
      const notes = [523.25, 659.25, 783.99, 1046.50]; // C, E, G, High C
      const now = this.ctx.currentTime;
      notes.forEach((freq, idx) => {
        if (!this.ctx) return;
        const osc = this.ctx.createOscillator();
        const gain = this.ctx.createGain();
        osc.type = 'triangle';
        osc.frequency.setValueAtTime(freq, now + idx * 0.09);
        gain.gain.setValueAtTime(0.2, now + idx * 0.09);
        gain.gain.exponentialRampToValueAtTime(0.001, now + idx * 0.09 + 0.4);
        osc.connect(gain);
        gain.connect(this.ctx.destination);
        osc.start(now + idx * 0.09);
        osc.stop(now + idx * 0.09 + 0.45);
      });
    } catch (_) {}
  }
}

export const sound = new SoundService();
