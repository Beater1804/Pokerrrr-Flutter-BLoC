import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/main_page/main_page_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/onboarding/onboarding_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/pokedex/pokedex_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/settings/settings_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_theme.dart';
import 'package:pokerrrr_bloc/src/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsBloc()),
          BlocProvider(create: (context) => OnboardingBloc()),
          BlocProvider(create: (context) => MainPageBloc()),
          BlocProvider(create: (context) => PokedexBloc()),
        ],
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            if (state.themes == appThemeData[AppTheme.normalTheme]) {
              log("TRUE");
            } else {
              log("FALSE");
            }
            return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return MaterialApp(
                  home: const SplashScreen(),
                  debugShowCheckedModeBanner: false,
                  theme: state.themes,
                );
              },
            );
          },
        ));
  }
}
