import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9,
      width: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: AppColors.activeIndicator,
      ),
    );
  }
}
