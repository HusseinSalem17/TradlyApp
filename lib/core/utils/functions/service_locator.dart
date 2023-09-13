import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tradly_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
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
