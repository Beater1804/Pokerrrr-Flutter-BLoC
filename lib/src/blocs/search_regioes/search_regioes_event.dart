part of 'search_regioes_bloc.dart';

abstract class SearchRegioesEvent extends Equatable {
  const SearchRegioesEvent();

  @override
  List<Object> get props => [];
}

class LoadTitle extends SearchRegioesEvent {
  final String title;
  const LoadTitle({required this.title});

  @override
  List<Object> get props => [title];
}

class ChooseTipos extends SearchRegioesEvent {
  final Tipos selectedTipos;
  const ChooseTipos({required this.selectedTipos});

  @override
  List<Object> get props => [selectedTipos];
}

class ChooseOrdem extends SearchRegioesEvent {
  final String selectedOrdem;
  const ChooseOrdem({required this.selectedOrdem});

  @override
  List<Object> get props => [selectedOrdem];
}
