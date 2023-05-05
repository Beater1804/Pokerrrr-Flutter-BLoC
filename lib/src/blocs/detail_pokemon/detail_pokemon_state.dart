part of 'detail_pokemon_bloc.dart';

abstract class DetailPokemonState extends Equatable {
  const DetailPokemonState();
  
  @override
  List<Object> get props => [];
}

class DetailPokemonInitial extends DetailPokemonState {}
