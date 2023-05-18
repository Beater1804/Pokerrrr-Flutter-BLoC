part of 'favorite_list_bloc.dart';

abstract class FavoriteListEvent extends Equatable {
  const FavoriteListEvent();

  @override
  List<Object> get props => [];
}

class AddToFavoriteList extends FavoriteListEvent {
  final String pokemonId;

  const AddToFavoriteList({required this.pokemonId});

  @override
  List<Object> get props => [pokemonId];
}

class RemoveFromFavoriteList extends FavoriteListEvent {
  final String pokemonId;

  const RemoveFromFavoriteList({required this.pokemonId});

  @override
  List<Object> get props => [pokemonId];
}
