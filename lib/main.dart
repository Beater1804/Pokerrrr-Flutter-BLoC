import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/favorite_list/favorite_list_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/main_page/main_page_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/onboarding/onboarding_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/pokedex/pokedex_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/search_pokemon/search_pokemon_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/settings/settings_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_theme.dart';
import 'package:pokerrrr_bloc/src/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      //* Trường hợp app đang chạy background
      //* mà người dùng vào lại app thì sẽ gọi case 'resumed'.
      case AppLifecycleState.resumed:
        // CODE Ở ĐÂY
        break;

      //* Trường hợp inactive:
      //* Khi người dùng lướt đa nhiệm, picture-on-picture.
      //* Hoặc người dùng nghe điện thoại khi đang chạy app.
      //* Hoặc các case từ OS như TouchID, FaceID,...
      //* Những trường hợp trên sẽ detect đến case 'inactive'
      case AppLifecycleState.inactive:
        // CODE Ở ĐÂY
        break;

      //* Pause là khi người dùng đang dùng app
      //* nhưng chuyển sang dùng app khác (Không phải tắt hẳn).
      //* -> App vẫn chạy background thì detect case 'paused'
      case AppLifecycleState.paused:
        // CODE Ở ĐÂY
        break;

      //* Trường hợp detached là khi người dùng tắt hẳn app
      //* khỏi đa nhiệm OS.
      //! ISSUE-103
      case AppLifecycleState.detached:
        // CODE Ở ĐÂY
        break;
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

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
          BlocProvider(create: (context) => FavoriteListBloc()),
          BlocProvider(create: (context) => SearchPokemonBloc()),
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
