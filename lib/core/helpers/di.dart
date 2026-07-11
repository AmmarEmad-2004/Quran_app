import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quran_app/core/networking/api_service.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo_impl.dart';

final GetIt getIt = GetIt.instance;
void setupLocator() {
getIt.registerSingleton<ApiService>(ApiService(Dio()));
getIt.registerLazySingleton<AzkarRepo>(() => AzkarRepoImpl());
getIt.registerLazySingleton<QuranRepo>(() => QuranRepoImpl(getIt()));
}