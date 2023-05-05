import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'detail_pokemon_event.dart';
part 'detail_pokemon_state.dart';

class DetailPokemonBloc extends Bloc<DetailPokemonEvent, DetailPokemonState> {
  DetailPokemonBloc() : super(DetailPokemonInitial()) {
    on<DetailPokemonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
