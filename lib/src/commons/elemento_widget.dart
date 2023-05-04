import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/models/elemento.dart';

class ElementoWidget extends StatelessWidget {
  final Elemento currentElemento;
  const ElementoWidget({
    super.key,
    required this.currentElemento,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        currentElemento.nameElemento,
        style:
            AppStyle.defaultText(fontSize: 11.sp, fontWeight: FontWeight.w500),
      ),
      backgroundColor: currentElemento.colorElemento,
      avatar: Stack(children: [
        Center(
          child: Container(
            height: 20,
            width: 20,
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
      ]),
    );
  }
}
