import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/pokedex/pokedex_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/search_pokemon/search_pokemon_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/ui/detail_pokemon/detail_pokemon_screen.dart';
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
    final searchBloc = BlocProvider.of<SearchPokemonBloc>(context);
    return GestureDetector(
      onTap: () => MethodUtils.closeKeyboard(context),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Column(
              children: [
                SearchPokedex(
                  searchController: searchBloc.searchController,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: Divider(
                    height: 4.h,
                    color: AppColors.dividerPokedex,
                  ),
                ),
                SizedBox(
                  height: 0.05.sh,
                  width: 1.sw,
                  child: Padding(
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
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: BlocBuilder<SearchPokemonBloc, SearchPokemonState>(
                    builder: (context, searchState) {
                      if (searchState is SearchPokemonInitial) {
                        return BlocConsumer<PokedexBloc, PokedexState>(
                          listener: (context, state) {
                            return;
                          },
                          listenWhen: (previous, current) {
                            if (previous is PokedexInitial &&
                                current is PokedexInitial) {
                              if (previous.selectedOrdem !=
                                  current.selectedOrdem) {
                                return true;
                              }
                              if (previous.selectedTipos !=
                                  current.selectedTipos) {
                                return true;
                              }
                            }
                            return false;
                          },
                          builder: (context, state) {
                            if (state is PokedexInitial) {
                              return ListView.builder(
                                physics: const BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics()),
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                shrinkWrap: true,
                                itemCount: searchState.searchPokemon.isNotEmpty
                                    ? searchState.searchPokemon.length
                                    : state.listPokemon.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                DetailPokemonScreen(
                                              currentPokemon:
                                                  state.listPokemon[index],
                                            ),
                                          ),
                                        );
                                      },
                                      child: PokemonCard(
                                        currentPokemon: searchState
                                                .searchPokemon.isNotEmpty
                                            ? searchState.searchPokemon[index]
                                            : state.listPokemon[index],
                                      ),
                                    ),
                                  );
                                },
                              );
                            } else {
                              return const SizedBox();
                            }
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ),
                SizedBox(height: 90.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
