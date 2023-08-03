part of 'search_regioes_bloc.dart';

abstract class SearchRegioesState extends Equatable {
  const SearchRegioesState();

  SearchRegioesState copyWith();

  @override
  List<Object> get props => [];
}

class SearchRegioesInitial extends SearchRegioesState {
  final List<Pokemon> listPokemon;
  final Tipos selectedTipos;
  final String selectedOrdem;
  final String title;
  const SearchRegioesInitial({
    this.listPokemon = const <Pokemon>[...Lists.listPokemon],
    required this.selectedTipos,
    required this.selectedOrdem,
    required this.title,
  });

  @override
  List<Object> get props => [selectedTipos, selectedOrdem, title];

  @override
  SearchRegioesInitial copyWith({
    List<Pokemon>? listPokemon,
    Tipos? selectedTipos,
    String? selectedOrdem,
    String? title,
  }) {
    return SearchRegioesInitial(
      listPokemon: listPokemon ?? this.listPokemon,
      selectedTipos: selectedTipos ?? this.selectedTipos,
      selectedOrdem: selectedOrdem ?? this.selectedOrdem,
      title: title ?? this.title,
    );
  }
}
