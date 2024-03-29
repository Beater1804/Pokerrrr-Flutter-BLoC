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
        List<Pokemon> listSortPokemon;
        if (event.selectedTipos.title == Strings.tiposOne) {
          listSortPokemon = Lists.listPokemon;
        } else {
          listSortPokemon = Lists.listPokemon
              .where((pokemon) => pokemon.listElemento.any((elemento) =>
                  elemento.nameElemento == event.selectedTipos.title))
              .toList();
        }
        emit(
          state.copyWith(
            selectedTipos: event.selectedTipos,
            listPokemon: listSortPokemon,
          ),
        );
      }
    });
    on<ChooseOrdem>((event, emit) {
      final state = this.state;
      if (state is PokedexInitial) {
        final List<Pokemon> sortedList = List.from(state.listPokemon);

        sortedList.sort((a, b) {
          if (event.selectedOrdem == Strings.ordemOne) {
            return a.nome.compareTo(b.nome);
          } else if (event.selectedOrdem == Strings.ordemTwo) {
            return b.nome.compareTo(a.nome);
          } else if (event.selectedOrdem == Strings.ordemThree) {
            return a.namePokemon.compareTo(b.namePokemon);
          } else {
            return b.namePokemon.compareTo(a.namePokemon);
          }
        });

        emit(
          state.copyWith(
            selectedOrdem: event.selectedOrdem,
            listPokemon: sortedList,
          ),
        );
      }
    });
  }
}
