part of 'pokedex_bloc.dart';

abstract class PokedexState extends Equatable {
  const PokedexState();

  PokedexState copyWith();
  @override
  List<Object> get props => [];
}

class PokedexInitial extends PokedexState {
  final Tipos selectedTipos;
  final String selectedOrdem;
  final Pokemon currentPokemon;
  const PokedexInitial({
    required this.selectedTipos,
    required this.selectedOrdem,
    required this.currentPokemon,
  });

  @override
  List<Object> get props => [selectedTipos, selectedOrdem, currentPokemon];

  @override
  PokedexInitial copyWith({
    Tipos? selectedTipos,
    String? selectedOrdem,
    Pokemon? currentPokemon,
  }) {
    return PokedexInitial(
      selectedTipos: selectedTipos ?? this.selectedTipos,
      selectedOrdem: selectedOrdem ?? this.selectedOrdem,
      currentPokemon: currentPokemon ?? this.currentPokemon,
    );
  }
}