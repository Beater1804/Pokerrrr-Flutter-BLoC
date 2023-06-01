part of 'search_pokemon_bloc.dart';

abstract class SearchPokemonEvent extends Equatable {
  const SearchPokemonEvent();

  @override
  List<Object> get props => [];
}

class SearchByKeyword extends SearchPokemonEvent {
  final String searchController;
  const SearchByKeyword({
    required this.searchController,
  });

  @override
  List<Object> get props => [searchController];
}
