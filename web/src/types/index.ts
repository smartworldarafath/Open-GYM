export type SetKind = 'normal' | 'warmup' | 'drop' | 'failure' | 'restPause';

export interface Exercise {
  id: string;
  name: string;
  primary: string;
  secondary: string[];
  equipment: string;
  difficulty: string;
  art: string;
  steps: string[];
  mode?: string;
  isCustom?: boolean;
}

export interface SessionSet {
  id: string;
  reps: number;
  weight: number;
  done: boolean;
  kind: SetKind;
  rpe?: number;
  sec?: number;
  km?: number;
  previous?: { weight: number; reps: number };
}

export interface SessionExercise {
  id: string;
  exerciseId: string;
  name: string;
  primary: string;
  sets: SessionSet[];
  notes?: string;
  linkedNext?: boolean;
}

export interface ActiveSession {
  startTime: number;
  elapsedSeconds: number;
  isPaused: boolean;
  exercises: SessionExercise[];
  currentExerciseIndex: number;
  restEndsAt: number | null;
  restTotalSeconds: number;
  routineId?: string;
  routineName?: string;
}

export interface LoggedSet {
  reps: number;
  weight: number;
  kind: SetKind;
  rpe?: number;
  sec?: number;
  km?: number;
}

export interface LoggedExercise {
  id: string;
  name: string;
  primary: string;
  sets: LoggedSet[];
}

export interface LoggedSession {
  id: string;
  date: string; // ISO string
  durationSec: number;
  exercises: LoggedExercise[];
  volume: number;
  setCount: number;
  routineName?: string;
}

export interface Routine {
  id: string;
  name: string;
  group: string;
  color: string;
  exerciseIds: string[];
  setsCount?: Record<string, number>;
  plannedSets?: Record<string, { reps: number; weight: number; kind: SetKind }[]>;
}

export interface BodyweightEntry {
  id: string;
  date: string;
  kg: number;
}

export interface BodyMeasure {
  id: string;
  date: string;
  part: string;
  val: number;
}

export interface GymNote {
  id: string;
  title: string;
  content: string;
  date: string;
}

export interface Profile {
  name: string;
  bio: string;
  heightCm: number;
  targetWeightKg: number;
  gender: 'male' | 'female';
  activityLevel: 'sedentary' | 'light' | 'moderate' | 'heavy' | 'athlete';
}

export interface Settings {
  theme: 'dark' | 'amoled' | 'warm' | 'light';
  units: 'kg' | 'lb';
  soundEnabled: boolean;
  defaultRestSec: number;
  heatTone: 'ember' | 'green' | 'blue' | 'mono';
  language: string;
}

export const MUSCLES = [
  { id: 'chest', label: 'Chest', view: 'front', group: 'Chest' },
  { id: 'shoulders', label: 'Shoulders', view: 'front', group: 'Shoulders' },
  { id: 'biceps', label: 'Biceps', view: 'front', group: 'Arms' },
  { id: 'forearm', label: 'Forearm', view: 'front', group: 'Arms' },
  { id: 'abdomen', label: 'Abdomen', view: 'front', group: 'Core' },
  { id: 'obliques', label: 'Obliques', view: 'front', group: 'Core' },
  { id: 'quads', label: 'Quads', view: 'front', group: 'Legs' },
  { id: 'trapezius', label: 'Trapezius', view: 'back', group: 'Back' },
  { id: 'back', label: 'Back', view: 'back', group: 'Back' },
  { id: 'triceps', label: 'Triceps', view: 'back', group: 'Arms' },
  { id: 'glutes', label: 'Glutes', view: 'back', group: 'Legs' },
  { id: 'hamstrings', label: 'Hamstrings', view: 'back', group: 'Legs' },
  { id: 'calves', label: 'Calves', view: 'back', group: 'Legs' },
] as const;
