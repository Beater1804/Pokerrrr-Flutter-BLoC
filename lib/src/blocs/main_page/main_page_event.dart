part of 'main_page_bloc.dart';

abstract class MainPageEvent extends Equatable {
  const MainPageEvent();

  @override
  List<Object> get props => [];
}

class UpdatePage extends MainPageEvent {
  final int currentIndex;
  const UpdatePage({this.currentIndex = 0});

  @override
  List<Object> get props => [currentIndex];
}
