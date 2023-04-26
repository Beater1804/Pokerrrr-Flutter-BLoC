// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final pageViewController = PageController();
  OnboardingBloc() : super(const OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {});

    on<ChangeTextButton>(
      (event, emit) => {
        if (event.currentPage == 0)
          {
            emit(OnboardingInitial(curIndex: event.currentPage)),
            pageViewController.jumpToPage(event.currentPage)
          }
        else
          {
            emit(const OnboardingInitial(curIndex: 1)),
            pageViewController.jumpToPage(1)
          },
      },
    );
  }
}
