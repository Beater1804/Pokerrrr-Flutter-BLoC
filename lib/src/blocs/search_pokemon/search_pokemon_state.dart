// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_pokemon_bloc.dart';

abstract class SearchPokemonState extends Equatable {
  const SearchPokemonState();

  SearchPokemonState copyWith();
  @override
  List<Object> get props => [];
}

class SearchPokemonInitial extends SearchPokemonState {
  final List<Pokemon> searchPokemon;
  const SearchPokemonInitial({
    this.searchPokemon = const [],
  });

  @override
  List<Object> get props => [searchPokemon];

  @override
  SearchPokemonInitial copyWith({
    List<Pokemon>? searchPokemon,
  }) {
    return SearchPokemonInitial(
      searchPokemon: searchPokemon ?? this.searchPokemon,
    );
  }
}
