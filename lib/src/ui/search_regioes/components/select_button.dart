import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';

class SelectButton extends StatelessWidget {
  final String titleText;
  final Color backgroundColor;
  final Color titleColor;
  const SelectButton({
    super.key,
    this.titleText = Strings.tiposOne,
    this.backgroundColor = AppColors.backgroundButtonSearchBySelect,
    this.titleColor = AppColors.defaultWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 0.42.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(49),
        color: backgroundColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 42,
              width: 0.336.sw,
              child: Center(
                child: Text(
                  titleText,
                  style: AppStyle.defaultText(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: titleColor),
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: titleColor,
            ),
          )
        ],
      ),
    );
  }
}
