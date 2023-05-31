import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';

part 'filter_pokemon_event.dart';
part 'filter_pokemon_state.dart';

class FilterPokemonBloc extends Bloc<FilterPokemonEvent, FilterPokemonState> {
  FilterPokemonBloc() : super(const FilterPokemonState()) {
    on<FilterPokemonEvent>((event, emit) {});
    on<SortTypeName>((event, emit) {});
  }
}
