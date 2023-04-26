part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class ChangeTextButton extends OnboardingEvent {
  final int currentPage;
  const ChangeTextButton({this.currentPage = 0});
  @override
  List<Object> get props => [currentPage];
}
