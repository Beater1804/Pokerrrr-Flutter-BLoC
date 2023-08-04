import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';

class SubHeader extends StatefulWidget {
  final String title;
  final String description;
  final Color titleColor;
  final bool isShowSwitch;
  const SubHeader({
    super.key,
    required this.title,
    this.description = '',
    this.titleColor = AppColors.titlePageColor,
    this.isShowSwitch = false,
  });

  @override
  State<SubHeader> createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: ListTile(
        // minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        title: Text(
          widget.title,
          style: AppStyle.defaultText(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: widget.titleColor,
          ),
        ),
        subtitle: Text(
          widget.description,
          style: AppStyle.defaultText(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.descriptionContaColor,
          ),
        ),
        trailing: Visibility(
            visible: widget.isShowSwitch,
            child: Switch(
              value: isActive,
              activeColor: AppColors.activeSwitchColor,
              activeTrackColor: AppColors.activeTrackColor,
              onChanged: (bool value) {
                setState(() {
                  isActive = value;
                });
              },
            )),
      ),
    );
  }
}
