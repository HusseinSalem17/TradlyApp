import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tradly_app/constants.dart';

import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/functions/service_locator.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/login_cubit/login_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/register_cubit/register_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/user_cubit/add_user_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/verify_cubit/verify_cubit.dart';
import 'package:tradly_app/features/home_feature/presentation/manager/home_cubit/home_cubit.dart';
import 'package:tradly_app/routes.dart';

import 'features/auth_feature/data/models/response/response_login/response_login.dart';

void main() async {
  setupServiceLocator();
  // Set the status bar color to secondary color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AssetsColors.kSecondaryColor,
  ));
  //Init Hive
  await Hive.initFlutter();
  Hive.registerAdapter(ResponseLoginAdapter());
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<ResponseLogin>(kResponseLoginBoxForAuth);
  await Hive.openBox<User>(kLoginBox);

  runApp(BlocProvider(
    create: (context) => AddUserCubit(),
    child: const TradlyApp(),
  ));
}

class TradlyApp extends StatelessWidget {
  const TradlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(getIt.get<AuthRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => VerifyCubit(getIt.get<AuthRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.customLightTheme,
        onGenerateRoute: (settings) => generateRoute(settings, context),
      ),
    );
  }
}
