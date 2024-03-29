import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/app_theme.dart';

part 'settings_event.dart';

part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : super(SettingsInitial(themes: appThemeData[AppTheme.normalTheme]!)) {
    on<ChangeThemeMode>((event, emit) {
      if (event.isDarkMode == true) {
        emit(SettingsInitial(themes: appThemeData[AppTheme.darkTheme]!));
      } else if (event.isDarkMode == false) {
        emit(SettingsInitial(themes: appThemeData[AppTheme.normalTheme]!));
      }
    });
  }
}
