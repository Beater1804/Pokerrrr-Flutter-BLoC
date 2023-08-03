import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/models/regioes.dart';

part 'regioes_list_event.dart';
part 'regioes_list_state.dart';

class RegioesListBloc extends Bloc<RegioesListEvent, RegioesListState> {
  RegioesListBloc() : super(RegioesListInitial()) {
    on<RegioesListLoad>((even, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1))
          .then((value) => emit(
                const RegioesListLoaded(
                    listRegioes: <Regioes>[...Lists.listRegioes]),
              ));
    });
  }
}
