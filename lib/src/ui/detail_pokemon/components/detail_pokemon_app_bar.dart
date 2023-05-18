import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/favorite_list/favorite_list_bloc.dart';
import 'package:pokerrrr_bloc/src/commons/elemento_widget.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';
import 'package:pokerrrr_bloc/src/utils/method_utils.dart';

class DetailPokemonAppBar extends SliverPersistentHeaderDelegate {
  final Pokemon pokemon;
  const DetailPokemonAppBar({required this.pokemon});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double shrinkPercentage = min(1, shrinkOffset / (maxExtent - minExtent));

    return Stack(
      children: [
        Positioned.fill(
          top: 0,
          left: 0,
          right: 0,
          child: Material(
            elevation: 0,
            shadowColor: MethodUtils.getBackgroundCardColor(
                pokemon.listElemento.first.nameElemento),
            child: SafeArea(
              child: Stack(
                children: [
                  if (shrinkPercentage != 1)
                    Positioned.fill(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Visibility(
                            visible: shrinkPercentage < 0.4,
                            replacement: Visibility(
                              visible: shrinkPercentage > 0.2,
                              child: Container(
                                  height: 287 *
                                      (1 - shrinkPercentage).h /
                                      1.5.clamp(80.h, double.infinity),
                                  width: 1.sw,
                                  color:
                                      pokemon.listElemento.first.colorElemento),
                            ),
                            child: Opacity(
                              opacity: shrinkPercentage > 0.4
                                  ? 1
                                  : 1 - shrinkPercentage,
                              child: SizedBox(
                                height: 287 * (1 - shrinkPercentage).h,
                                width: 1.sw,
                                child: Image.asset(
                                  pokemon.backgroundElemento,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: shrinkPercentage > 0.4
                                ? 1
                                : 1 - shrinkPercentage,
                            child: _buildInformationWidget(
                                context, shrinkPercentage),
                          ),
                        ],
                      ),
                    ),
                  if (shrinkPercentage == 1)
                    Opacity(
                      opacity: shrinkPercentage,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: _buildCollapsedInformationWidget(),
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: shrinkPercentage > 0.4
                          ? pokemon.listElemento.first.colorElemento
                          : Colors.transparent,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                        height: max(
                          80.h,
                          80.h * (1 - shrinkPercentage),
                        ),
                        width: 1.sw,
                      ),
                      child: FittedBox(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: 1.sw,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 28,
                                    color: AppColors.defaultWhite,
                                  )),
                              Visibility(
                                visible: shrinkPercentage > 0.9,
                                child: Text(
                                  pokemon.namePokemon,
                                  style: AppStyle.defaultText(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.defaultWhite),
                                ),
                              ),
                              BlocBuilder<FavoriteListBloc, FavoriteListState>(
                                builder: (context, state) {
                                  final isFavorite = state.listFavoriteId
                                      .contains(pokemon.nome);

                                  return GestureDetector(
                                    onTap: () {
                                      if (isFavorite) {
                                        context.read<FavoriteListBloc>().add(
                                            RemoveFromFavoriteList(
                                                pokemonId: pokemon.nome));
                                      } else {
                                        context.read<FavoriteListBloc>().add(
                                            AddToFavoriteList(
                                                pokemonId: pokemon.nome));
                                      }
                                    },
                                    child: SizedBox(
                                      height: 28.h,
                                      width: 28.w,
                                      child: Image.asset(
                                        isFavorite
                                            ? ImageAsset.activeFavorite
                                            : ImageAsset.inactiveFavorite,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20.w,
                    right: 20.w,
                    child: Visibility(
                      visible: shrinkPercentage <= 0.9,
                      child: Container(
                        height: 1,
                        color: AppColors.defaultWhiteDark,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInformationWidget(
          BuildContext context, double shrinkPercentage) =>
      ClipRect(
        child: shrinkPercentage < 0.4
            ? Stack(children: [
                OverflowBox(
                  maxWidth: double.infinity,
                  maxHeight: double.infinity,
                  child: FittedBox(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        width: 1.sw,
                        height: 250 * (1 - shrinkPercentage).h,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              child: SizedBox(
                                  height: 160 * (1 - shrinkPercentage).h,
                                  child: Image.asset(
                                    pokemon.avatarPokemon,
                                    fit: BoxFit.contain,
                                  )),
                            ),
                          ],
                        )),
                  ),
                ),
                Positioned(
                  bottom: 0.h,
                  left: 20.w,
                  right: 20.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        pokemon.namePokemon,
                        style: AppStyle.defaultText(
                            fontSize: 32 * (1 - shrinkPercentage).sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        pokemon.nome,
                        style: AppStyle.defaultText(
                            fontSize: 16 * (1 - shrinkPercentage).sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.defaultWhiteDark.withOpacity(0.7)),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: pokemon.listElemento
                              .map(
                                (elemento) => Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: ElementoWidget(
                                    currentElemento: elemento,
                                    fontSize: 14,
                                    sizeIcon: 28 * (1 - shrinkPercentage),
                                    sizeChip: 67 * (1 - shrinkPercentage),
                                    paddingHoz: 14 * (1 - shrinkPercentage),
                                    paddingVer: 4 * (1 - shrinkPercentage),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 20 * (1 - shrinkPercentage).h,
                            bottom: 20 * (1 - shrinkPercentage).h),
                        width: 1.sw,
                        child: Text(
                          pokemon.descriptionPokemon,
                          style: AppStyle.defaultText(
                            fontSize: 14 * (1 - shrinkPercentage),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ])
            : Stack(
                children: [
                  OverflowBox(
                    maxWidth: double.infinity,
                    maxHeight: double.infinity,
                    child: FittedBox(
                      alignment: shrinkPercentage > 0.6
                          ? Alignment.bottomCenter
                          : Alignment.topCenter,
                      child: Visibility(
                        visible: shrinkPercentage > 0.4,
                        child: SizedBox(
                            width: 1.sw,
                            height: 250 * (1 - shrinkPercentage).h,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  top: 10,
                                  bottom: 10,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                      height: 160 * (1 - shrinkPercentage).h,
                                      child: Image.asset(
                                        pokemon.avatarPokemon,
                                        fit: BoxFit.contain,
                                      )),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10 * (1 - shrinkPercentage).h,
                    left: 20.w,
                    right: 20.w,
                    child: SizedBox(
                      height: 60.h,
                      width: 1.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                pokemon.namePokemon,
                                style: AppStyle.defaultText(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                pokemon.nome,
                                style: AppStyle.defaultText(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.defaultWhiteDark
                                        .withOpacity(0.7)),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: pokemon.listElemento
                                  .map(
                                    (elemento) => Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: ElementoWidget(
                                          currentElemento: elemento),
                                    ),
                                  )
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      );

  Widget _buildCollapsedInformationWidget() => const SizedBox();
  @override
  double get maxExtent => 540.h;

  @override
  double get minExtent => 80.h;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
