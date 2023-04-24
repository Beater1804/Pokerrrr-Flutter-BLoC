import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/app_theme.dart';

class CustomTheme {
  final Color defaultWhite;
  final Color defaultRed;
  final Color backgroundSplashColor;

  CustomTheme({
    this.defaultWhite = Colors.white,
    this.defaultRed = const Color(0xFFCD3131),
    this.backgroundSplashColor = const Color(0xFF000029),
  });

  CustomTheme copyWith(
      {Color? defaultWhite, Color? defaultRed, Color? backgroundSplashColor}) {
    return CustomTheme(
      defaultWhite: defaultWhite ?? this.defaultWhite,
      defaultRed: defaultRed ?? this.defaultRed,
      backgroundSplashColor:
          backgroundSplashColor ?? this.backgroundSplashColor,
    );
  }
}

extension ThemeDataExtensions on ThemeData {
  static final Map<InputDecorationTheme, CustomTheme> _own = {};

  void addOwn(CustomTheme own) {
    // can't use reference to ThemeData since Theme.of() can create a new localized instance from the original theme.
    // Use internal fields, in this case InputDecoreationTheme reference which is not deep copied but simply a reference is copied
    _own[inputDecorationTheme] = own;
  }

  static CustomTheme? empty;

  CustomTheme own({AppTheme? appTheme}) {
    var o = _own[inputDecorationTheme];
    if (o == null) {
      empty ??= CustomTheme();
      o = empty;
    }

    if (appTheme == AppTheme.darkTheme) {
      return o!.copyWith(
          defaultWhite: const Color(0x0fffff00),
          defaultRed: const Color(0xFFFFFF00),
          backgroundSplashColor: const Color(0xFFDEDEDE));
    }
    return o!;
  }
}
