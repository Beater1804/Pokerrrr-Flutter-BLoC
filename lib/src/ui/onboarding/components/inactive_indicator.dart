import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';

class InactiveIndicator extends StatelessWidget {
  const InactiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9,
      width: 9,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.inactiveIndicator,
      ),
    );
  }
}
