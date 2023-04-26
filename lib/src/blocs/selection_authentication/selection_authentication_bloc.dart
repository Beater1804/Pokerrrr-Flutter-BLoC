// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selection_authentication_event.dart';
part 'selection_authentication_state.dart';

class SelectionAuthenticationBloc
    extends Bloc<SelectionAuthenticationEvent, SelectionAuthenticationState> {
  SelectionAuthenticationBloc() : super(SelectionAuthenticationInitial()) {
    on<SelectionAuthenticationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
