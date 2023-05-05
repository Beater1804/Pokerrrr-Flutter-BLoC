import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';
import 'package:pokerrrr_bloc/src/ui/detail_pokemon/components/body_index_widget.dart';
import 'package:pokerrrr_bloc/src/ui/detail_pokemon/components/detail_pokemon_app_bar.dart';

class DetailPokemonScreen extends StatelessWidget {
  final Pokemon currentPokemon;
  const DetailPokemonScreen({super.key, required this.currentPokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: DetailPokemonAppBar(pokemon: currentPokemon),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BodyIndexWidget(
                      type: Strings.peso,
                      value: currentPokemon.peso,
                    ),
                    BodyIndexWidget(
                      type: Strings.altura,
                      value: currentPokemon.altura,
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BodyIndexWidget(
                      type: Strings.categoria,
                      value: currentPokemon.categoria,
                    ),
                    BodyIndexWidget(
                      type: Strings.habilidade,
                      value: currentPokemon.habilidade,
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Center(
                  child: Text(
                    Strings.general,
                    style: AppStyle.defaultText(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.defaultWhiteDark.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  height: 800,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
