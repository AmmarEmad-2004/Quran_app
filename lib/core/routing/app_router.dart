import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/routing/app_transitions.dart';
import 'package:quran_app/features/azkar/ui/screens/azkar_detail_screen.dart';
import 'package:quran_app/features/azkar/ui/screens/azkar_screen.dart';
import 'package:quran_app/features/home/ui/screens/home_screen.dart';
import 'package:quran_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:quran_app/features/prayer/ui/screens/prayer_screen.dart';
import 'package:quran_app/features/quran/ui/screens/quran_details_screen.dart';
import 'package:quran_app/features/quran/ui/screens/quran_screen.dart';
import 'package:quran_app/features/onboarding/ui/screens/location_screen.dart';
import 'package:quran_app/features/reminder/ui/screens/reminder_screen_.dart';
import 'package:quran_app/features/setting/screens/setting_screen.dart';
import 'package:quran_app/features/splash/screens/splash_screen.dart';
import 'package:quran_app/features/tasbih/ui/screens/tasbih_screen.dart';

// GoRouter configuration
abstract class AppRouter {
  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        pageBuilder: (context, state) =>
            AppTransitions.buildPage(state: state, child: const SplashScreen()),
      ),
      GoRoute(
        path: AppRouters.onBoarding,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const OnBoardingScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.home,
        pageBuilder: (context, state) =>
            AppTransitions.buildPage(state: state, child: const HomeScreen()),
      ),
      GoRoute(
        path: AppRouters.quran,
        pageBuilder: (context, state) =>
            AppTransitions.buildPage(state: state, child: const QuranScreen()),
      ),
      GoRoute(
        path: AppRouters.quranDetails,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const QuranDetailsScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.location,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const LocationScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.prayer,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const PrayerScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.reminder,
       pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const ReminderScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.setting,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const SettingScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.azkar,
        pageBuilder: (context, state) =>
            AppTransitions.buildPage(state: state, child: const AzkarScreen()),
      ),
      GoRoute(
        path: AppRouters.tasbih,
        pageBuilder: (context, state) =>
            AppTransitions.buildPage(state: state, child: const TasbihScreen()),
      ),
       GoRoute(
        path: AppRouters.azkarDetails,
        pageBuilder: (context, state) =>
            AppTransitions.buildPage(state: state, child: const AzkarDetailScreen()),
      ),
    ],
  );
}
