import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    this.onTap,
    required this.label,
    this.backgroundColor,
    this.labelColor,
    this.radius,
    this.isActive = true,
    this.disableColor,
    this.fontSize,
    this.gradient,
    this.padding,
    this.borderColor,
    this.onTapWhenDisabled,
    this.margin,
    this.defaultButtonColor = AppColors.ctaActiveButton,
    this.defaultDisableButtonColor = AppColors.ctaInactiveButton,
    this.fontWeight,
  }) : super(key: key);

  final VoidCallback? onTap;
  final VoidCallback? onTapWhenDisabled;
  final String label;
  final Color? backgroundColor;
  final Color? labelColor;
  final double? radius;
  final bool isActive;
  final Color? disableColor;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final Color defaultButtonColor;
  final Color defaultDisableButtonColor;
  final Color defaultTextColor = Colors.white;
  final double defaultFontSize = 14.0;
  final LinearGradient? gradient;
  final EdgeInsetsGeometry? margin;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isActive) {
          onTap?.call();
        } else {
          onTapWhenDisabled?.call();
        }
      },
      child: Container(
        margin: margin,
        width: 1.sw,
        padding: padding ??
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        constraints: const BoxConstraints(minHeight: 42.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? getButtonColor(),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(radius ?? 24.0),
          color: getButtonColor(),
          gradient: gradient,
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              label,
              style: AppStyle.defaultText(
                color: labelColor ?? defaultTextColor,
                fontSize: fontSize ?? defaultFontSize,
                fontWeight: fontWeight ?? FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color getButtonColor() {
    if (isActive) {
      return backgroundColor ?? defaultButtonColor;
    }
    return disableColor ?? defaultDisableButtonColor;
  }
}
