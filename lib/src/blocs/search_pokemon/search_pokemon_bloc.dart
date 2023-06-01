import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';

part 'search_pokemon_event.dart';
part 'search_pokemon_state.dart';

class SearchPokemonBloc extends Bloc<SearchPokemonEvent, SearchPokemonState> {
  final searchController = TextEditingController();

  SearchPokemonBloc()
      : super(const SearchPokemonInitial(
          searchPokemon: [],
        )) {
    on<SearchPokemonEvent>((event, emit) {});

    on<SearchByKeyword>((event, emit) {
      final state = this.state;
      if (state is SearchPokemonInitial) {
        if (event.searchController.isNotEmpty) {
          final searchText = event.searchController.toLowerCase();
          final searchPokemon = Lists.listPokemon.where((pokemon) {
            final lowercaseName = pokemon.namePokemon.toLowerCase();
            final lowercaseElements = pokemon.listElemento
                .map((elemento) => elemento.nameElemento.toLowerCase())
                .toList();
            final lowercaseNome = pokemon.nome.toLowerCase();
            return lowercaseName.contains(searchText) ||
                lowercaseElements
                    .any((element) => element.contains(searchText)) ||
                lowercaseNome.contains(searchText) ||
                lowercaseElements.any(
                    (element) => element.toLowerCase().contains(searchText));
          }).toList();

          emit(state.copyWith(searchPokemon: searchPokemon));
        } else {
          emit(state.copyWith(searchPokemon: []));
        }
      }
    });
  }
}
