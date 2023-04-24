import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/custom_theme.dart';

enum AppTheme {
  normalTheme,
  darkTheme,
}

CustomTheme customTheme(BuildContext context) => Theme.of(context).own();
final appThemeData = {
  AppTheme.normalTheme: ThemeData().copyWith()..addOwn(CustomTheme()),
  AppTheme.darkTheme: ThemeData().copyWith()
    ..addOwn(
      CustomTheme(),
    ),
};
