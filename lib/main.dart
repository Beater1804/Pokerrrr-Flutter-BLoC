import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/settings/settings_bloc.dart';
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
        ],
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return MaterialApp(
              home: const SplashScreen(),
              debugShowCheckedModeBanner: false,
              theme: state.themes,
            );
          },
        ));
  }
}
