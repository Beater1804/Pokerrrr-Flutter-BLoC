// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'favorite_list_bloc.dart';

class FavoriteListState extends Equatable {
  final List<String> listFavoriteId;
  final List<Pokemon> listPokemon;
  const FavoriteListState({
    this.listFavoriteId = const [],
    this.listPokemon = const [],
  });

  @override
  List<Object> get props => [listFavoriteId];

  FavoriteListState copyWith({
    List<String>? listFavoriteId,
    List<Pokemon>? listPokemon,
  }) {
    return FavoriteListState(
      listFavoriteId: listFavoriteId ?? this.listFavoriteId,
      listPokemon: listPokemon ?? this.listPokemon,
    );
  }
}
