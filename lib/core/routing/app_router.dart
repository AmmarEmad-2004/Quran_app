import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:quran_app/features/prayer/screens/prayer_screen.dart';
import 'package:quran_app/features/quran/screens/quran_details_screen.dart';
import 'package:quran_app/features/quran/screens/quran_screen.dart';
import 'package:quran_app/features/onboarding/screens/language_screen.dart';
import 'package:quran_app/features/onboarding/screens/location_screen.dart';
import 'package:quran_app/features/reminder/screens/reminder_screen_.dart';
import 'package:quran_app/features/splash/screens/splash_screen.dart';

// GoRouter configuration
abstract class AppRouter {
  static GoRouter get goRouter => GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRouters.onBoarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRouters.quran,
        builder: (context, state) => const QuranScreen(),
      ),
      GoRoute(
        path: AppRouters.quranDetails,
        builder: (context, state) => const QuranDetailsScreen(),
      ),
      GoRoute(
        path: AppRouters.language,
        builder: (context, state) => const LanguageScreen(),
      ),
      GoRoute(
        path: AppRouters.location,
        builder: (context, state) => const LocationScreen(),
      ),
      GoRoute(
        path: AppRouters.prayer,
        builder: (context, state) => const PrayerScreen(),
      ),
      GoRoute(
        path: AppRouters.reminder,
        builder: (context, state) => const ReminderScreen(),
      ),
    ],
  );
}
