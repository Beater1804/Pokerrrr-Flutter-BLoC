part of 'main_page_bloc.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();

  @override
  List<Object> get props => [];
}

class MainPageInitial extends MainPageState {
  final int currentIndex;
  const MainPageInitial({this.currentIndex = 0});
  @override
  List<Object> get props => [currentIndex];
}
