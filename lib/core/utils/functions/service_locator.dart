import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_login/user.dart';
import 'package:tradly_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import '../../../constants.dart';
import '../../../features/auth_feature/data/models/response/response_login/data.dart';
import '../../../features/auth_feature/data/models/response/response_login/key.dart';
import '../../../features/auth_feature/data/models/response/response_login/response_login.dart';
import 'api_service.dart';

final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  await Hive.initFlutter(); // Initialize Hive
  Hive.registerAdapter<ResponseLogin>(ResponseLoginAdapter());
  Hive.registerAdapter<Data>(DataAdapter());
  Hive.registerAdapter<User>(UserAdapter());
  Hive.registerAdapter<Key>(KeyAdapter());
  await Hive.openBox<ResponseLogin>(
    kResponseLoginBoxForAuth,
  ); // Open the Hive box
  //make Singleton Pattern and make the object between () for Dio
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(
      //get() => return the singelton that i made
      getIt.get<ApiService>(),
    ),
  );
}

void disposeServiceLocator() async {
  await Hive.close();
}
