import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/search_pokemon/search_pokemon_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/search_regioes/search_regioes_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/ui/detail_pokemon/detail_pokemon_screen.dart';
import 'package:pokerrrr_bloc/src/ui/search_regioes/components/ordem_bottomsheet.dart';
import 'package:pokerrrr_bloc/src/ui/search_regioes/components/pokemon_card.dart';
import 'package:pokerrrr_bloc/src/ui/search_regioes/components/search_pokedex.dart';
import 'package:pokerrrr_bloc/src/ui/search_regioes/components/select_button.dart';
import 'package:pokerrrr_bloc/src/ui/search_regioes/components/tipos_bottomsheet.dart';

class SearchRegioesScreen extends StatelessWidget {
  const SearchRegioesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchBloc = BlocProvider.of<SearchPokemonBloc>(context);
    return Scaffold(
      // appBar: AppBar(
      //   bottomOpacity: 0,
      //   leading: GestureDetector(
      //     onTap: () => Navigator.of(context).pop(),
      //     child: const Icon(
      //       Icons.arrow_back,
      //       color: AppColors.titlePageColor,
      //     ),
      //   ),
      //   backgroundColor: AppColors.defaultWhite,
      //   title: BlocBuilder<SearchRegioesBloc, SearchRegioesState>(
      //     builder: (context, state) {
      //       if (state is SearchRegioesInitial) {
      //         return Text(
      //           state.title,
      //           style: AppStyle.defaultText(
      //             fontSize: 18,
      //             fontWeight: FontWeight.w600,
      //             color: AppColors.titlePageColor,
      //           ),
      //         );
      //       }
      //       return const SizedBox();
      //     },
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.titlePageColor,
                      ),
                    ),
                  ),
                  BlocBuilder<SearchRegioesBloc, SearchRegioesState>(
                    builder: (context, state) {
                      if (state is SearchRegioesInitial) {
                        return Text(
                          state.title,
                          style: AppStyle.defaultText(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.titlePageColor,
                          ),
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
            ),
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
                      child: BlocBuilder<SearchRegioesBloc, SearchRegioesState>(
                        builder: (context, state) {
                          if (state is SearchRegioesInitial) {
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
                      child: BlocBuilder<SearchRegioesBloc, SearchRegioesState>(
                        builder: (context, state) {
                          if (state is SearchRegioesInitial) {
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
            SizedBox(height: 12.h),
            Expanded(
              child: BlocBuilder<SearchPokemonBloc, SearchPokemonState>(
                builder: (context, searchState) {
                  if (searchState is SearchPokemonInitial) {
                    return BlocConsumer<SearchRegioesBloc, SearchRegioesState>(
                      listener: (context, state) {
                        return;
                      },
                      listenWhen: (previous, current) {
                        if (previous is SearchRegioesInitial &&
                            current is SearchRegioesInitial) {
                          if (previous.selectedOrdem != current.selectedOrdem) {
                            return true;
                          }
                          if (previous.selectedTipos != current.selectedTipos) {
                            return true;
                          }
                        }
                        return false;
                      },
                      builder: (context, state) {
                        if (state is SearchRegioesInitial) {
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
                                padding: EdgeInsets.symmetric(vertical: 8.h),
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
                                    currentPokemon:
                                        searchState.searchPokemon.isNotEmpty
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
            Visibility(
                visible: MediaQuery.of(context).viewInsets.bottom < 0,
                child: SizedBox(height: 90.h)),
          ],
        ),
      ),
    );
  }
}
