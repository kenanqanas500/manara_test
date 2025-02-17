import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final getIt = GetIt.instance;

class Dependencies {
  static void registerRepos() {
    // getIt.registerFactory(() => FriendsListCubit(getIt()));
    // getIt.registerFactory(() => BankRecipientCubit(getIt()));

    //! Repositories
    // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo());
  }
}
