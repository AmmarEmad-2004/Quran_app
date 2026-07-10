import 'package:get_it/get_it.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';

final GetIt getIt = GetIt.instance;
void setupLocator() {
getIt.registerLazySingleton<AzkarRepoImpl>(() => AzkarRepoImpl());
}