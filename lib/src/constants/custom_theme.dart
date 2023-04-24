import 'package:flutter/material.dart';

class CustomTheme {
  final Color defaultWhite;
  final Color defaultRed;
  final Color backgroundSplashColor;

  const CustomTheme({
    this.defaultWhite = Colors.white,
    this.defaultRed = const Color(0xFFCD3131),
    this.backgroundSplashColor = const Color(0xFF000029),
  });
}

extension ThemeDataExtensions on ThemeData {
  static final Map<InputDecorationTheme, CustomTheme> _own = {};

  void addOwn(CustomTheme own) {
    // can't use reference to ThemeData since Theme.of() can create a new localized instance from the original theme.
    // Use internal fields, in this case InputDecoreationTheme reference which is not deep copied but simply a reference is copied
    _own[inputDecorationTheme] = own;
  }

  static CustomTheme? empty;

  CustomTheme own() {
    var o = _own[inputDecorationTheme];
    if (o == null) {
      empty ??= const CustomTheme();
      o = empty;
    }
    return o!;
  }
}