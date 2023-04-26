import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';

class OnboardingBody extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const OnboardingBody({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 0.2.sh),
        Container(
          height: 0.4.sh,
          width: 1.sw,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            title,
            style:
                AppStyle.defaultText(fontWeight: FontWeight.w500, fontSize: 26),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            subTitle,
            style:
                AppStyle.defaultText(fontWeight: FontWeight.w500, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
