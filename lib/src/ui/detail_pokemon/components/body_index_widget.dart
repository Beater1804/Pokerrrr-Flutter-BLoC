import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/utils/method_utils.dart';

class BodyIndexWidget extends StatelessWidget {
  const BodyIndexWidget({
    super.key,
    required this.type,
    required this.value,
  });

  final String type;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 16.h,
              child: Image.asset(
                ImageAsset.bodyIndexPeso,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                type,
                style: AppStyle.defaultText(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.defaultWhiteDark.withOpacity(0.6),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Container(
          constraints: BoxConstraints(
            minHeight: 43.h,
          ),
          width: 154.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              width: 1,
              color: AppColors.defaultWhiteDark.withOpacity(0.2),
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                MethodUtils.formatValue(type, value),
                textAlign: TextAlign.center,
                style: AppStyle.defaultText(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.defaultWhiteDark.withOpacity(0.9),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
