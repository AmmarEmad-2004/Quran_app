import 'package:quran_app/core/config/cache/get_storage_helper.dart';
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/core/routing/app_routers.dart';

String getInitialRoute() {
  final hasSeenOnboarding = GetStorageHelper.getGetStorageData(
        key: KeyConstants.hasSeenOnboarding,
      ) ??
      false;

  return hasSeenOnboarding ? AppRouters.home : AppRouters.splash;
}