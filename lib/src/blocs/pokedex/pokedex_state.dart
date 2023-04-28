part of 'pokedex_bloc.dart';

abstract class PokedexState extends Equatable {
  const PokedexState();

  @override
  List<Object> get props => [];
}

class PokedexInitial extends PokedexState {
  final Tipos selectedTipos;
  final String selectedOrdem;
  const PokedexInitial(
      {required this.selectedTipos, required this.selectedOrdem});

  @override
  List<Object> get props => [selectedTipos, selectedOrdem];
}
