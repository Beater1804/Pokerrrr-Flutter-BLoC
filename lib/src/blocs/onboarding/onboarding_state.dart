part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {
  final int curIndex;
  const OnboardingInitial({this.curIndex = 0});

  @override
  List<Object> get props => [curIndex];
}
