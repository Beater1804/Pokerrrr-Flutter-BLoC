part of 'selection_authentication_bloc.dart';

abstract class SelectionAuthenticationState extends Equatable {
  const SelectionAuthenticationState();
  
  @override
  List<Object> get props => [];
}

class SelectionAuthenticationInitial extends SelectionAuthenticationState {}
