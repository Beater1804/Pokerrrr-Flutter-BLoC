import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/models/tipos.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc()
      : super(const PokedexInitial(
          selectedTipos: Tipos(
            title: Strings.tiposOne,
            textColor: AppColors.botaoTodosText,
            backgroundColor: AppColors.botaoTodosButton,
          ),
          selectedOrdem: Strings.ordemOne,
        )) {
    on<ChooseTipos>((event, emit) {
      final state = this.state;
      if (state is PokedexInitial) {
        emit(PokedexInitial(
          selectedTipos: event.selectedTipos,
          selectedOrdem: state.selectedOrdem,
        ));
      }
    });
    on<ChooseOrdem>((event, emit) {
      final state = this.state;
      if (state is PokedexInitial) {
        emit(PokedexInitial(
          selectedTipos: state.selectedTipos,
          selectedOrdem: event.selectedOrdem,
        ));
      }
    });
  }
}
