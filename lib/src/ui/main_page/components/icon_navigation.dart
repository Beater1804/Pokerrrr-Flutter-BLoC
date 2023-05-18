import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';

class IconNavigation extends StatelessWidget {
  final bool isSelect;
  final String icon;
  final String iconSelect;
  final String title;
  const IconNavigation({
    super.key,
    this.isSelect = false,
    required this.icon,
    required this.iconSelect,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 60,
      child: isSelect
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(iconSelect),
                ),
                Text(
                  title,
                  style: AppStyle.defaultText(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.titleMenuNavigator,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          : SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(icon),
            ),
    );
  }
}
