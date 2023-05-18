import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_list_event.dart';
part 'favorite_list_state.dart';

class FavoriteListBloc extends Bloc<FavoriteListEvent, FavoriteListState> {
  FavoriteListBloc() : super(const FavoriteListState()) {
    on<FavoriteListEvent>((event, emit) {});
    on<AddToFavoriteList>((event, emit) {
      emit(const FavoriteListState().copyWith(
          listFavoriteId: List.from(state.listFavoriteId)
            ..add(event.pokemonId)));
    });
    on<RemoveFromFavoriteList>((event, emit) {
      emit(const FavoriteListState().copyWith(
          listFavoriteId: List.from(state.listFavoriteId)
            ..remove(event.pokemonId)));
    });
  }
}
