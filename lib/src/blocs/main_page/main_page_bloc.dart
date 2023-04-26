// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc() : super(const MainPageInitial()) {
    on<UpdatePage>((event, emit) {
      emit(MainPageInitial(currentIndex: event.currentIndex));
      // void updateIndex(int index) {
      //   currentIndex.value = index;
      // }
    });
  }
}
