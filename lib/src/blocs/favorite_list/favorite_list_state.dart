// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'favorite_list_bloc.dart';

class FavoriteListState extends Equatable {
  final List<String> listFavoriteId;
  const FavoriteListState({
    this.listFavoriteId = const [],
  });

  @override
  List<Object> get props => [listFavoriteId];

  FavoriteListState copyWith({
    List<String>? listFavoriteId,
  }) {
    return FavoriteListState(
      listFavoriteId: listFavoriteId ?? this.listFavoriteId,
    );
  }
}
