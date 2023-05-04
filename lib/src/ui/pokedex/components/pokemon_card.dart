import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/pokedex/pokedex_bloc.dart';
import 'package:pokerrrr_bloc/src/commons/elemento_widget.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';
import 'package:pokerrrr_bloc/src/utils/method_utils.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon currentPokemon;
  const PokemonCard({super.key, required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      width: 328.w,
      decoration: BoxDecoration(
          color: MethodUtils.getBackgroundCardColor(
              currentPokemon.listElemento.first.nameElemento),
          borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        children: [
          Container(
            height: 102.h,
            width: 202.w,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentPokemon.nome,
                      style: AppStyle.defaultText(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      currentPokemon.namePokemon,
                      style: AppStyle.defaultText(
                          fontSize: 21.sp, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: currentPokemon.listElemento
                        .map(
                          (elemento) => Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: ElementoWidget(currentElemento: elemento),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 102.h,
                width: 126.w,
                decoration: BoxDecoration(
                  color: currentPokemon.listElemento.first.colorElemento,
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 94.h,
                    width: 94.w,
                    child: Image.asset(
                      currentPokemon.elementoOutlineImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 60.h,
                    width: 60.w,
                    child: Image.asset(
                      currentPokemon.avatarPokemon,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 4.h,
                right: 4.w,
                child: GestureDetector(
                  onTap: () {
                    print("Tap o UI: ${currentPokemon.nome}");
                    final updatedPokemon = currentPokemon.copyWith(
                        isFavorite: !currentPokemon.isFavorite);
                    print(updatedPokemon.isFavorite);
                    context
                        .read<PokedexBloc>()
                        .add(UpdatePokemon(updatedPokemon: updatedPokemon));
                  },
                  child: SizedBox(
                      height: 32.h,
                      width: 32.w,
                      child: Image.asset(
                        currentPokemon.isFavorite
                            ? ImageAsset.activeFavorite
                            : ImageAsset.inactiveFavorite,
                        fit: BoxFit.contain,
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
