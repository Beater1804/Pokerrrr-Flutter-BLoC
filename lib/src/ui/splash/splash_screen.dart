import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/blocs/settings/settings_bloc.dart';
import 'package:pokerrrr_bloc/src/commons/slide_route.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/app_theme.dart';
import 'package:pokerrrr_bloc/src/ui/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, SlideRoute(page: const OnboardingScreen(), x: 1, y: 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: customTheme(context).backgroundSplashColor,
        body: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Poke',
                    style: AppStyle.commonText(
                        fontSize: 50.4,
                        color: customTheme(context).defaultWhite,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'dex',
                    style: AppStyle.commonText(
                        fontSize: 50.4,
                        color: customTheme(context).defaultRed,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
