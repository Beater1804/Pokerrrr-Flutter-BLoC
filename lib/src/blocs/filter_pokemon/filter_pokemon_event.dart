part of 'filter_pokemon_bloc.dart';

abstract class FilterPokemonEvent extends Equatable {
  const FilterPokemonEvent();

  @override
  List<Object> get props => [];
}

class SortTypeName extends FilterPokemonEvent {
  final String typeName;
  const SortTypeName({required this.typeName});
  @override
  List<Object> get props => [typeName];
}

class SortBy extends FilterPokemonEvent {
  final String sortBy;
  const SortBy({required this.sortBy});
  @override
  List<Object> get props => [sortBy];
}
