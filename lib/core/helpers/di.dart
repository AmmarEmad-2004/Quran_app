import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quran_app/core/networking/api_service.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';
import 'package:quran_app/features/quran/data/dataSources/quran_local_data_source.dart';
import 'package:quran_app/features/quran/data/dataSources/quran_remote_data_source.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo_impl.dart';

final GetIt getIt = GetIt.instance;
void setupLocator() {
getIt.registerSingleton<ApiService>(ApiService(Dio()));

 // Data Sources
  getIt.registerLazySingleton<QuranRemoteDataSource>(
    () => QuranRemoteDataSourceImpl(getIt<ApiService>()),
  );
  getIt.registerLazySingleton<QuranLocalDataSource>(
    () => QuranLocalDataSourceImpl(),
  );

 // Repositories
  getIt.registerLazySingleton<QuranRepo>(
    () => QuranRepoImpl(
      getIt<QuranRemoteDataSource>(),
      getIt<QuranLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<AzkarRepo>(
    () => AzkarRepoImpl(),
  );
}