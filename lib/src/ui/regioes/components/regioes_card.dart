import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/models/regioes.dart';

class RegioesCard extends StatelessWidget {
  final Regioes regioes;
  const RegioesCard({super.key, required this.regioes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 102.h,
              width: 328.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(regioes.backgroundRegioes),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 102.h,
              width: 328.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.15),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          regioes.nameRegioes,
                          style: AppStyle.defaultText(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.nameRegioesColor,
                          ),
                        ),
                        Text(
                          regioes.nomeRegioes,
                          style: AppStyle.defaultText(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.nomeRegioesColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                      width: 150.w,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: regioes.pokemonSamples.length,
                        itemBuilder: (context, index) => Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(regioes.pokemonSamples[index]),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
