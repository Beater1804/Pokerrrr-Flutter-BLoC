import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';
import 'package:pokerrrr_bloc/src/models/tipos.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc()
      : super(PokedexInitial(
          selectedTipos: const Tipos(
            title: Strings.tiposOne,
            textColor: AppColors.botaoTodosText,
            backgroundColor: AppColors.botaoTodosButton,
          ),
          selectedOrdem: Strings.ordemOne,
          currentPokemon: Lists.listPokemon.first,
        )) {
    on<ChooseTipos>((event, emit) {
      final state = this.state;
      if (state is PokedexInitial) {
        emit(state.copyWith(selectedTipos: event.selectedTipos));
      }
    });
    on<ChooseOrdem>((event, emit) {
      final state = this.state;
      if (state is PokedexInitial) {
        emit(state.copyWith(selectedOrdem: event.selectedOrdem));
      }
    });

    on<UpdatePokemon>((event, emit) {
      final state = this.state;
      if (state is PokedexInitial) {
        final updatedPokemon = event.updatedPokemon;
        final index = Lists.listPokemon
            .indexWhere((pokemon) => pokemon.nome == updatedPokemon.nome);
        // print("Nome select: ${Lists.listPokemon[index].nome}");
        // print("Before change: ${Lists.listPokemon[index].isFavorite}");
        if (index != -1) {
          Lists.listPokemon[index] = updatedPokemon;
          // print(
          //     "Phần tử tiếp theo: ${Lists.listPokemon[index + 1].isFavorite}");
          // print("After change: ${Lists.listPokemon[index].isFavorite}");
          emit(state.copyWith(currentPokemon: updatedPokemon));
        }
      }
    });
  }
}
