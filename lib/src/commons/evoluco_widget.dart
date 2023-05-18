import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/models/evolucoes.dart';

class EvolucoWidget extends StatelessWidget {
  const EvolucoWidget({
    super.key,
    required this.currentEvoluco,
  });

  final Evolucoes currentEvoluco;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Align(
            alignment: Alignment.topLeft,
            child: Visibility(
              visible: currentEvoluco.descriptionEvolucoes != null,
              child: Text(
                currentEvoluco.descriptionEvolucoes ?? '',
                style: AppStyle.defaultText(
                  color: AppColors.nomeEvolucoColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          height: 76.h,
          width: 296.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90.r),
            border: Border.all(color: AppColors.lineContainerEvolucoColor),
          ),
          child: Row(
            children: [
              Stack(children: [
                Container(
                  height: 74.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(71.r),
                    color: currentEvoluco.listMiniElementos.first.colorElemento,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 65,
                      width: 65,
                      child: Image.asset(
                        currentEvoluco.listMiniElementos.first.iconElemento,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 65,
                      width: 65,
                      child: Image.asset(
                        currentEvoluco.avatarPokemon,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              ]),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 45.w),
                child: SizedBox(
                  height: 56,
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentEvoluco.namePokemon,
                            style: AppStyle.defaultText(
                              fontSize: 14.sp,
                              color: AppColors.titleEvolucoColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            currentEvoluco.nome,
                            style: AppStyle.defaultText(
                              fontSize: 10.sp,
                              color: AppColors.nomeEvolucoColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            currentEvoluco.listMiniElementos.length,
                            (index) {
                              if (currentEvoluco.listMiniElementos.length < 2) {
                                return Expanded(
                                  child: Container(
                                    height: 13.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: currentEvoluco
                                          .listMiniElementos[index]
                                          .colorElemento,
                                    ),
                                    child: SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: Image.asset(
                                        currentEvoluco.listMiniElementos[index]
                                            .iconElemento,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Expanded(
                                  child: Padding(
                                    padding: index == 0
                                        ? const EdgeInsets.only(right: 2)
                                        : const EdgeInsets.only(left: 2),
                                    child: Container(
                                      height: 13.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color: currentEvoluco
                                            .listMiniElementos[index]
                                            .colorElemento,
                                      ),
                                      child: SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset(
                                          currentEvoluco
                                              .listMiniElementos[index]
                                              .iconElemento,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Visibility(
          visible: currentEvoluco.level != null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 37.h,
                width: 24.w,
                child: Image.asset(
                  ImageAsset.arrowDownLevel,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                currentEvoluco.level ?? '',
                style: AppStyle.defaultText(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.titleMenuNavigator,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
