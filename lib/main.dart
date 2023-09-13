import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/functions/service_locator.dart';
import 'package:tradly_app/features/auth_feature/data/repos/auth_repo_impl.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/register_cubit/register_cubit.dart';
import 'package:tradly_app/routes.dart';
import 'features/onboarding_screen/presentation/views/splash_screen.dart';

void main() {
  setupServiceLocator();
  // Set the status bar color to secondary color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AssetsColors.kSecondaryColor,
  ));
  runApp(const TradlyApp());
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.customlightTheme,
        home: const SplashScreen(),
        onGenerateRoute: (settings) => generateRoute(settings),
      ),
    );
  }
}
