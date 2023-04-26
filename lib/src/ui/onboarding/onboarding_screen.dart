import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/onboarding/onboarding_bloc.dart';
import 'package:pokerrrr_bloc/src/commons/common_button.dart';
import 'package:pokerrrr_bloc/src/commons/slide_route.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/ui/onboarding/components/active_indicator.dart';
import 'package:pokerrrr_bloc/src/ui/onboarding/components/inactive_indicator.dart';
import 'package:pokerrrr_bloc/src/ui/onboarding/components/onboarding_body.dart';
import 'package:pokerrrr_bloc/src/ui/selection_authentication/selection_authentication_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller:
                BlocProvider.of<OnboardingBloc>(context).pageViewController,
            onPageChanged: (value) {
              context
                  .read<OnboardingBloc>()
                  .add(ChangeTextButton(currentPage: value));
            },
            itemCount: 2,
            itemBuilder: (_, i) {
              return OnboardingBody(
                image: Lists.listOnboarding[i].image,
                title: Lists.listOnboarding[i].title,
                subTitle: Lists.listOnboarding[i].subTitle,
              );
            },
          ),
          Positioned(
            bottom: 0.15.sh,
            left: 0,
            right: 0,
            child: BlocBuilder<OnboardingBloc, OnboardingState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    Lists.listOnboarding.length,
                    (index) {
                      if (state is OnboardingInitial) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: index == state.curIndex
                              ? const ActiveIndicator()
                              : const InactiveIndicator(),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                );
              },
            ),
          ),
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: BlocBuilder<OnboardingBloc, OnboardingState>(
                builder: (context, state) {
                  var step = 0;
                  if (state is OnboardingInitial) {
                    step = state.curIndex;
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CommonButton(
                      onTap: () {
                        if (step == 1) {
                          Navigator.pushAndRemoveUntil(
                            context,
                            SlideRoute(
                                page: const SelectionAuthenticationScreen(),
                                x: 1,
                                y: 0),
                            (Route<dynamic> route) => false,
                          );
                        }
                        context
                            .read<OnboardingBloc>()
                            .add(const ChangeTextButton(currentPage: 1));
                      },
                      label: Lists.listOnboarding[step].texButton,
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
