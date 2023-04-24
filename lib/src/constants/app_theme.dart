import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/custom_theme.dart';

enum AppTheme {
  darkTheme,
  normalTheme,
}

CustomTheme customTheme(BuildContext context) => Theme.of(context).own();
final appThemeData = {
  AppTheme.normalTheme: ThemeData()..addOwn(const CustomTheme()),
  AppTheme.darkTheme: ThemeData()
    ..addOwn(
      const CustomTheme(
        defaultWhite: Color(0xFF000000),
        defaultRed: Color(0xFFFFFF00),
        backgroundSplashColor: Color(0xFFDEDEDE),
      ),
    ),
};
