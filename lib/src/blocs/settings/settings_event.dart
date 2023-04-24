part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeMode extends SettingsEvent {
  final bool isDarkMode;
  const ChangeThemeMode({required this.isDarkMode});
  @override
  List<Object> get props => [isDarkMode];
}
