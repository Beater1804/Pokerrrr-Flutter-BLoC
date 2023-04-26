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

  static TextStyle defaultText({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontFamily: "Poppins",
      fontSize: fontSize ?? 18.0,
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
}
