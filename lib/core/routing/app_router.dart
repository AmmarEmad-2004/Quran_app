import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/routing/app_transitions.dart';
import 'package:quran_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:quran_app/features/quran/screens/quran_details_screen.dart';
import 'package:quran_app/features/quran/screens/quran_screen.dart';
import 'package:quran_app/features/onboarding/ui/screens/language_screen.dart';
import 'package:quran_app/features/onboarding/ui/screens/location_screen.dart';
import 'package:quran_app/features/splash/screens/splash_screen.dart';

// GoRouter configuration
abstract class AppRouter {
  static GoRouter get goRouter => GoRouter(
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
        path: AppRouters.language,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const LanguageScreen(),
        ),
      ),
      GoRoute(
        path: AppRouters.location,
        pageBuilder: (context, state) => AppTransitions.buildPage(
          state: state,
          child: const LocationScreen(),
        ),
      ),
    ],
  );
}
