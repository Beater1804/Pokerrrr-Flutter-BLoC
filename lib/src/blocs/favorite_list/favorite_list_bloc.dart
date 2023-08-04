import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';

part 'favorite_list_event.dart';
part 'favorite_list_state.dart';

class FavoriteListBloc extends Bloc<FavoriteListEvent, FavoriteListState> {
  FavoriteListBloc() : super(const FavoriteListState()) {
    on<FavoriteListEvent>((event, emit) {});
    on<AddToFavoriteList>((event, emit) {
      final state = this.state;

      List<String> newListFavoriteId = List.from(state.listFavoriteId)
        ..add(event.pokemonId);
      List<Pokemon> favoritedPokemon;

      favoritedPokemon = Lists.listPokemon
          .where((e) => newListFavoriteId.contains(e.nome))
          .toList();

      emit(
        const FavoriteListState().copyWith(
          listFavoriteId: newListFavoriteId,
          listPokemon: favoritedPokemon,
        ),
      );
    });
    on<RemoveFromFavoriteList>((event, emit) {
      final state = this.state;
      List<String> newListFavoriteId = List.from(state.listFavoriteId)
        ..remove(event.pokemonId);

      List<Pokemon> favoritedPokemon;
      favoritedPokemon = state.listPokemon
        ..removeWhere((e) => e.nome == event.pokemonId);
      emit(const FavoriteListState().copyWith(
        listFavoriteId: newListFavoriteId,
        listPokemon: favoritedPokemon,
      ));
    });
  }
}
