part of 'regioes_list_bloc.dart';

abstract class RegioesListState extends Equatable {
  const RegioesListState();

  @override
  List<Object> get props => [];
}

class RegioesListInitial extends RegioesListState {}

class RegioesListLoaded extends RegioesListState {
  final List<Regioes> listRegioes;
  const RegioesListLoaded({required this.listRegioes});

  @override
  List<Object> get props => [listRegioes];
}
