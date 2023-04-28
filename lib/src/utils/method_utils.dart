import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';

class MethodUtils {
  static void closeKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static Color getBackgroundCardColor(String elementoFirstType) {
    switch (elementoFirstType) {
      case Strings.grama:
        return const Color(0xFFEDF6EC);
      case Strings.fogo:
        return const Color(0xFFFCF3EB);
      case Strings.agua:
        return const Color(0xFFEBF1F8);
      case Strings.inseto:
        return const Color(0xFFF1F6E8);
      case Strings.eletrico:
        return const Color(0xFFFBF8E9);
      case Strings.fada:
        return const Color(0xFFFBF1FA);
      case Strings.terrestre:
        return const Color(0xFFF9EFEA);
      case Strings.pedra:
        return const Color(0xFFF7F5F1);
      case Strings.normal:
        return const Color(0xFFF1F2F3);
      case Strings.venenoso:
        return const Color(0xFFF5EDF8);
      case Strings.psiquico:
        return const Color(0xFFFCEEEF);
      case Strings.metal:
        return const Color(0xFFECF1F3);
      case Strings.dragao:
        return const Color(0xFFE4EEF6);
      case Strings.lutador:
        return const Color(0xFFF8E9EE);
      case Strings.noturno:
        return const Color(0xFFECEBED);
      case Strings.fantasma:
        return const Color(0xFFEBEDF4);
      case Strings.gelo:
        return const Color(0xFFF1FBF9);
      case Strings.voador:
        return const Color(0xFFF1F4FA);
      default:
        return Colors
            .transparent; // Màu trong suốt nếu không tìm thấy tên chủng tộc Pokemon
    }
  }
}
