export interface Award {
  id: string;
  name: string;
  desc: string;
  category: 'milestone' | 'streak' | 'workouts' | 'volume' | 'sets' | 'hours';
  target: number;
}

export const AWARDS: Award[] = [
  { id: 'firstStep', name: 'First Step', desc: 'Welcome to Open-GYM! App set up.', category: 'milestone', target: 1 },
  { id: 'firstWorkout', name: 'First Blood', desc: 'Completed your very first workout.', category: 'workouts', target: 1 },
  { id: 'firstRoutine', name: 'Architect', desc: 'Created your first custom routine.', category: 'milestone', target: 1 },
  { id: 'firstRecord', name: 'Record Breaker', desc: 'Set your first Personal Record (PR).', category: 'milestone', target: 1 },
  { id: 'streak3', name: 'Hat Trick', desc: '3-day workout streak.', category: 'streak', target: 3 },
  { id: 'streak7', name: 'Full Week', desc: '7-day workout streak.', category: 'streak', target: 7 },
  { id: 'workouts10', name: 'Ten Down', desc: 'Logged 10 complete workouts.', category: 'workouts', target: 10 },
  { id: 'tonne1', name: 'One Tonne Club', desc: 'Lifted 1,000 kg total volume.', category: 'volume', target: 1000 },
  { id: 'sets100', name: 'Century of Sets', desc: 'Completed 100 working sets.', category: 'sets', target: 100 },
  { id: 'hours10', name: 'Ten Hours', desc: 'Trained for 10 total hours.', category: 'hours', target: 10 },
  { id: 'workouts50', name: 'Half Century', desc: 'Logged 50 workouts.', category: 'workouts', target: 50 },
  { id: 'tonnes10', name: 'Ten Tonnes', desc: 'Lifted 10,000 kg total volume.', category: 'volume', target: 10000 },
  { id: 'hours50', name: 'Dedicated', desc: 'Trained for 50 total hours.', category: 'hours', target: 50 },
  { id: 'streak30', name: 'Monthly Habit', desc: 'Maintained a 30-day streak.', category: 'streak', target: 30 },
  { id: 'sets1000', name: 'Thousand Sets', desc: 'Completed 1,000 working sets.', category: 'sets', target: 1000 },
  { id: 'workouts100', name: 'Century Club', desc: 'Completed 100 workouts.', category: 'workouts', target: 100 },
  { id: 'hours100', name: 'Centurion of Iron', desc: 'Trained for 100 total hours.', category: 'hours', target: 100 },
  { id: 'streak100', name: 'Unstoppable', desc: 'Reached a 100-day streak.', category: 'streak', target: 100 },
  { id: 'tonnes100', name: 'One Hundred Tonnes', desc: 'Lifted 100,000 kg volume.', category: 'volume', target: 100000 },
  { id: 'workouts365', name: 'Year of Iron', desc: 'Logged 365 workouts.', category: 'workouts', target: 365 },
];
