import React from 'react';
import { useGymStore } from './store/useGymStore';
import { Header } from './components/Header';
import { BottomNav } from './components/BottomNav';
import { DesktopSidebar } from './components/DesktopSidebar';
import { DesktopTopBar } from './components/DesktopTopBar';
import { RestTimerBanner } from './components/RestTimerBanner';

// Screens
import { HomeScreen } from './screens/HomeScreen';
import { TrainScreen } from './screens/TrainScreen';
import { SessionScreen } from './screens/SessionScreen';
import { ProgressScreen } from './screens/ProgressScreen';
import { ExercisesScreen } from './screens/ExercisesScreen';
import { ExerciseDetailModal } from './screens/ExerciseDetailModal';
import { RoutinesScreen } from './screens/RoutinesScreen';
import { ToolsScreen } from './screens/ToolsScreen';
import { AwardsScreen } from './screens/AwardsScreen';
import { MeasuresScreen } from './screens/MeasuresScreen';
import { NotesScreen } from './screens/NotesScreen';
import { ProfileScreen } from './screens/ProfileScreen';
import { SettingsScreen } from './screens/SettingsScreen';
import { AboutScreen } from './screens/AboutScreen';

import { AWARDS } from './data/awards';
import { Sparkles, X } from 'lucide-react';
import { getAssetUrl } from './utils/assets';

export function App() {
  const {
    route,
    settings,
    latestAwardUnlocked,
    dismissLatestAward,
  } = useGymStore();

  const themeClasses: Record<string, string> = {
    dark: 'bg-[#0C0B0A] text-white',
    amoled: 'bg-[#000000] text-white',
    warm: 'bg-[#120F0D] text-white',
    light: 'bg-[#F9F8F6] text-[#1A1713]',
  };

  const unlockedAwardObj = latestAwardUnlocked
    ? AWARDS.find((a) => a.id === latestAwardUnlocked)
    : null;

  const renderScreen = () => {
    switch (route) {
      case 'home':
        return <HomeScreen />;
      case 'train':
        return <TrainScreen />;
      case 'session':
        return <SessionScreen />;
      case 'progress':
      case 'timeline':
        return <ProgressScreen />;
      case 'exercises':
        return <ExercisesScreen />;
      case 'exercise-detail':
        return <ExerciseDetailModal />;
      case 'routines':
      case 'routine-edit':
        return <RoutinesScreen />;
      case 'tools':
      case 'tool-detail':
        return <ToolsScreen />;
      case 'awards':
        return <AwardsScreen />;
      case 'measures':
        return <MeasuresScreen />;
      case 'notes':
        return <NotesScreen />;
      case 'profile':
        return <ProfileScreen />;
      case 'settings':
        return <SettingsScreen />;
      case 'about':
        return <AboutScreen />;
      default:
        return <HomeScreen />;
    }
  };

  return (
    <div
      className={`min-h-screen ${
        themeClasses[settings.theme] || themeClasses.dark
      } dot-bg font-sans selection:bg-[#D9A184] selection:text-[#140D09] flex flex-col lg:flex-row`}
    >
      {/* Desktop Sidebar (persistent on large screens >= 1024px) */}
      <div className="hidden lg:block flex-shrink-0">
        <DesktopSidebar />
      </div>

      {/* Main Content Area */}
      <div className="flex-1 flex flex-col min-w-0 min-h-screen">
        {/* Mobile Top Header (only on mobile screens < 1024px) */}
        <div className="lg:hidden">
          <Header />
        </div>

        {/* Desktop Sticky Top Bar (only on desktop >= 1024px) */}
        <div className="hidden lg:block sticky top-0 z-20">
          <DesktopTopBar />
        </div>

        {/* Viewport for current active screen */}
        <main className="flex-1 p-4 sm:p-6 lg:p-8 overflow-y-auto">
          {renderScreen()}
        </main>

        {/* Mobile Bottom Navigation (only on mobile < 1024px) */}
        <div className="lg:hidden">
          <BottomNav />
        </div>
      </div>

      {/* Floating Rest Countdown Banner */}
      <RestTimerBanner />

      {/* Medal Unlocked Toast Notification */}
      {unlockedAwardObj && (
        <div className="fixed top-6 right-6 z-50 animate-in fade-in slide-in-from-top-4 duration-300 max-w-sm w-full">
          <div className="bg-[#1C1A18] border border-[#D9A184] rounded-2xl p-4 shadow-2xl flex items-center justify-between text-white">
            <div className="flex items-center gap-3">
              <img
                src={getAssetUrl(`assets/badges/${unlockedAwardObj.id}.webp`)}
                alt=""
                className="w-12 h-12 object-contain drop-shadow"
              />
              <div>
                <div className="text-[10px] font-black text-[#D9A184] uppercase tracking-wider flex items-center gap-1">
                  <Sparkles className="w-3.5 h-3.5 fill-current" /> Medal Unlocked!
                </div>
                <div className="text-sm font-black text-white">{unlockedAwardObj.name}</div>
                <div className="text-[11px] text-neutral-400">{unlockedAwardObj.desc}</div>
              </div>
            </div>

            <button
              onClick={dismissLatestAward}
              className="p-1.5 rounded-lg text-neutral-400 hover:text-white ml-2"
            >
              <X className="w-4 h-4" />
            </button>
          </div>
        </div>
      )}
    </div>
  );
}

export default App;
