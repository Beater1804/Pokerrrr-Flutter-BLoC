import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';
import 'package:pokerrrr_bloc/src/models/tipos.dart';

part 'search_regioes_event.dart';
part 'search_regioes_state.dart';

class SearchRegioesBloc extends Bloc<SearchRegioesEvent, SearchRegioesState> {
  SearchRegioesBloc()
      : super(const SearchRegioesInitial(
          selectedTipos: Tipos(
            title: Strings.tiposOne,
            textColor: AppColors.botaoTodosText,
            backgroundColor: AppColors.botaoTodosButton,
          ),
          selectedOrdem: Strings.ordemOne,
          title: '',
        )) {
    on<LoadTitle>((event, emit) {
      final state = this.state;
      if (state is SearchRegioesInitial) {
        List<Pokemon> listSortedPokemon;
        listSortedPokemon = Lists.listPokemon
            .where((pokemon) => pokemon.nameRegioes == event.title)
            .toList();
        emit(state.copyWith(
          title: event.title,
          listPokemon: listSortedPokemon,
        ));
      }
    });
    on<ChooseTipos>((event, emit) {
      final state = this.state;
      if (state is SearchRegioesInitial) {
        List<Pokemon> listSortedPokemon;
        if (event.selectedTipos.title == Strings.tiposOne) {
          listSortedPokemon = Lists.listPokemon
              .where((pokemon) => pokemon.nameRegioes == state.title)
              .toList();
        } else {
          listSortedPokemon = Lists.listPokemon
              .where((pokemon) => pokemon.nameRegioes == state.title)
              .toList();
          listSortedPokemon = listSortedPokemon
              .where((pokemon) => pokemon.listElemento.any((elemento) =>
                  elemento.nameElemento == event.selectedTipos.title))
              .toList();
        }
        emit(state.copyWith(
          listPokemon: listSortedPokemon,
          selectedTipos: event.selectedTipos,
        ));
      }
    });
    on<ChooseOrdem>((event, emit) {
      final state = this.state;
      if (state is SearchRegioesInitial) {
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
