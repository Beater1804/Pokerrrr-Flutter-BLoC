part of 'pokedex_bloc.dart';

abstract class PokedexEvent extends Equatable {
  const PokedexEvent();

  @override
  List<Object> get props => [];
}

class ChooseTipos extends PokedexEvent {
  final Tipos selectedTipos;
  const ChooseTipos({required this.selectedTipos});

  @override
  List<Object> get props => [selectedTipos];
}

class ChooseOrdem extends PokedexEvent {
  final String selectedOrdem;
  const ChooseOrdem({required this.selectedOrdem});

  @override
  List<Object> get props => [selectedOrdem];
}

class UpdatePokemon extends PokedexEvent {
  final Pokemon updatedPokemon;

  const UpdatePokemon({required this.updatedPokemon});

  @override
  List<Object> get props => [updatedPokemon];
}

class FilterPokemon extends PokedexEvent {
  final String typeName;
  final String sortBy;
  const FilterPokemon({required this.typeName, required this.sortBy});

  @override
  List<Object> get props => [typeName, sortBy];
}
