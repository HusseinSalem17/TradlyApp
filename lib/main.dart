import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/functions/service_locator.dart';
import 'package:tradly_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import 'package:tradly_app/features/home_feature/presentation/manager/home_cubit/home_cubit.dart';
import 'package:tradly_app/routes.dart';
import 'features/auth_feature/presentation/manager/auth_cubit/auth_cubit.dart';
import 'features/auth_feature/presentation/manager/user_hive_cubit/user_cubit.dart';
import 'features/store_feature/data/repos/store_repo_impl.dart';
import 'features/store_feature/presentation/manager/create_store_cubit/create_store_cubit.dart';

void main() async {
  setupServiceLocator();
  // Set the status bar color to secondary color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AssetsColors.kSecondaryColor,
  ));
  // run app with BlocProvider of UserCubit
  runApp(
    BlocProvider<UserHiveCubit>(
      create: (context) => UserHiveCubit(getIt.get<AuthRepoImpl>()),
      child: const TradlyApp(),
    ),
  );
}

class TradlyApp extends StatelessWidget {
  const TradlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(getIt.get<AuthRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => CreateStoreCubit(getIt.get<StoreRepoImpl>()),
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
