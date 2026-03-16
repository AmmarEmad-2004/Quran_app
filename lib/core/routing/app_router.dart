import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/features/quran/screens/quran_screen.dart';
import 'package:quran_app/features/splash/screens/splash_screen.dart';

// GoRouter configuration
abstract class AppRouter {
  static GoRouter get goRouter => GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      // GoRoute(
      //   path: AppRouters.onBoarding,
      //   builder: (context, state) => const OnBoardingScreen(),
      // ),
      GoRoute(
        path: AppRouters.quran,
        builder: (context, state) => const QuranScreen(),
      ),
    ],
  );
}
