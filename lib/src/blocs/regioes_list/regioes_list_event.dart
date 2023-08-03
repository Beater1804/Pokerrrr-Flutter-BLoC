part of 'regioes_list_bloc.dart';

abstract class RegioesListEvent extends Equatable {
  const RegioesListEvent();

  @override
  List<Object> get props => [];
}

class RegioesListLoad extends RegioesListEvent {}
