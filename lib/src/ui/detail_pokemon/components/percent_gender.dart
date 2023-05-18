import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/utils/method_utils.dart';

class PercentGender extends StatelessWidget {
  final double maleGender;
  const PercentGender({super.key, required this.maleGender});

  @override
  Widget build(BuildContext context) {
    int percentMaleThousands = (maleGender * 10).toInt();
    return Column(
      children: [
        SizedBox(
          height: 8.h,
          width: 328.w,
          child: maleGender != 0.0
              ? Row(
                  children: [
                    Expanded(
                      flex: percentMaleThousands,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(49.r),
                            bottomLeft: Radius.circular(49.r),
                          ),
                          color: AppColors.maleGender,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1000 - percentMaleThousands,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(49.r),
                            bottomRight: Radius.circular(49.r),
                          ),
                          color: AppColors.femaleGender,
                        ),
                      ),
                    )
                  ],
                )
              : Image.asset(
                  ImageAsset.unavailableGender,
                  fit: BoxFit.contain,
                ),
        ),
        SizedBox(height: 5.h),
        maleGender != 0.0
            ? SizedBox(
                width: 328.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageAsset.iconMale),
                        Text(
                          MethodUtils.formatPercentage(maleGender),
                          style: AppStyle.defaultText(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.defaultWhiteDark.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(ImageAsset.iconFemale),
                        Text(
                          MethodUtils.formatPercentage(100 - maleGender),
                          style: AppStyle.defaultText(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.defaultWhiteDark.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            : Center(
                child: Text(
                  Strings.unavailable,
                  style: AppStyle.defaultText(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.defaultWhiteDark.withOpacity(0.7),
                  ),
                ),
              )
      ],
    );
  }
}
