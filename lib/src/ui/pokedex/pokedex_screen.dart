import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/pokedex/pokedex_bloc.dart';
import 'package:pokerrrr_bloc/src/commons/elemento_widget.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/ui/pokedex/components/ordem_bottomsheet.dart';
import 'package:pokerrrr_bloc/src/ui/pokedex/components/pokemon_card.dart';
import 'package:pokerrrr_bloc/src/ui/pokedex/components/search_pokedex.dart';
import 'package:pokerrrr_bloc/src/ui/pokedex/components/select_button.dart';
import 'package:pokerrrr_bloc/src/ui/pokedex/components/tipos_bottomsheet.dart';
import 'package:pokerrrr_bloc/src/utils/method_utils.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MethodUtils.closeKeyboard(context),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchPokedex(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  height: 4,
                  color: AppColors.dividerPokedex,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return const ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: TiposBottomSheet());
                          },
                        );
                      },
                      child: BlocBuilder<PokedexBloc, PokedexState>(
                        builder: (context, state) {
                          if (state is PokedexInitial) {
                            return SelectButton(
                              titleText: state.selectedTipos.title,
                              titleColor: state.selectedTipos.textColor,
                              backgroundColor:
                                  state.selectedTipos.backgroundColor,
                            );
                          }
                          return const SelectButton();
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return const OrdemBottomSheet();
                          },
                        );
                      },
                      child: BlocBuilder<PokedexBloc, PokedexState>(
                        builder: (context, state) {
                          if (state is PokedexInitial) {
                            return SelectButton(
                              titleText: state.selectedOrdem,
                            );
                          }
                          return const SelectButton(
                            titleText: Strings.ordemOne,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: PokemonCard(currentPokemon: Lists.listPokemon.first),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
