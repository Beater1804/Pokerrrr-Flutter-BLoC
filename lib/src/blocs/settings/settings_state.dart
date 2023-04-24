part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
  final ThemeData themes;
  const SettingsState({required this.themes});
}

class SettingsInitial extends SettingsState {
  const SettingsInitial({required super.themes});

  @override
  List<Object> get props => [themes];
}
