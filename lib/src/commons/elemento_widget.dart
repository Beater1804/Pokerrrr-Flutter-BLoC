import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/models/elemento.dart';

class ElementoWidget extends StatelessWidget {
  final int fontSize;
  final double sizeChip;
  final double sizeIcon;
  final double paddingHoz;
  final double paddingVer;
  final Elemento currentElemento;

  const ElementoWidget({
    super.key,
    required this.currentElemento,
    this.fontSize = 11,
    this.sizeChip = 20,
    this.sizeIcon = 13,
    this.paddingHoz = 8,
    this.paddingVer = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding:
          EdgeInsets.symmetric(vertical: paddingVer, horizontal: paddingHoz),
      label: Text(
        currentElemento.nameElemento,
        style: AppStyle.defaultText(
            fontSize: fontSize.sp, fontWeight: FontWeight.w500),
      ),
      backgroundColor: currentElemento.colorElemento,
      avatar: Stack(
        children: [
          Center(
            child: Container(
              height: sizeChip,
              width: sizeChip,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.defaultWhite),
            ),
          ),
          Center(
            child: Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(currentElemento.imageElemento))),
            ),
          )
        ],
      ),
    );
  }
}
