import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle commonText({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontFamily: "PokemonSolid",
      fontSize: fontSize ?? 18.0,
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
}
