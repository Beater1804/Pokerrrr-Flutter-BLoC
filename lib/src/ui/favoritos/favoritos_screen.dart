import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/favorite_list/favorite_list_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/ui/detail_pokemon/detail_pokemon_screen.dart';
import 'package:pokerrrr_bloc/src/ui/favoritos/components/pokemon_card.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          toolbarHeight: 67.h,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.defaultWhite,
          title: Text(
            "Favoritos",
            style: AppStyle.defaultText(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.titlePageColor,
            ),
          ),
          pinned: true,
        ),
        // SliverToBoxAdapter(
        //   child: BlocBuilder<FavoriteListBloc, FavoriteListState>(
        //       builder: (context, state) {
        //     // if (state is RegioesListInitial) {
        //     //   return const CircularProgressIndicator();
        //     // }
        //     if (state.listPokemon.isNotEmpty) {
        //       return ListView.builder(
        //           physics: const BouncingScrollPhysics(),
        //           scrollDirection: Axis.vertical,
        //           shrinkWrap: true,
        //           itemCount: state.listPokemon.length,
        //           itemBuilder: (context, index) => GestureDetector(
        //               onTap: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => DetailPokemonScreen(
        //                       currentPokemon: state.listPokemon[index],
        //                     ),
        //                   ),
        //                 );
        //               },
        //               child: PokemonCard(
        //                 currentPokemon: state.listPokemon[index],
        //               )));
        //     } else {
        //       return Center(
        //         child: Column(
        //           mainAxisSize: MainAxisSize.max,
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: [
        //             Container(
        //               height: 215.h,
        //               width: 185.w,
        //               decoration: const BoxDecoration(
        //                 image: DecorationImage(
        //                   image: AssetImage(ImageAsset.noPokemonFavorite),
        //                 ),
        //               ),
        //             ),
        //             SizedBox(height: 16.h),
        //             Text(
        //               Strings.titleNoPokemonFavorite,
        //               textAlign: TextAlign.center,
        //               style: AppStyle.defaultText(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.w600,
        //                 color: AppColors.titleNoPokemonColor,
        //               ),
        //             ),
        //             SizedBox(height: 18.h),
        //             Text(
        //               Strings.descriptionNoPokemonFavorite,
        //               textAlign: TextAlign.center,
        //               style: AppStyle.defaultText(
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.w400,
        //                 color: AppColors.descriptionNoPokemonColor,
        //               ),
        //             ),
        //           ],
        //         ),
        //       );
        //     }
        //   }),
        // ),
        SliverFillRemaining(
            hasScrollBody: true,
            child: BlocBuilder<FavoriteListBloc, FavoriteListState>(
              builder: (context, state) {
                return BlocConsumer<FavoriteListBloc, FavoriteListState>(
                    listener: (context, state) {
                  return;
                }, listenWhen: (previous, current) {
                  if (previous.listFavoriteId != current.listFavoriteId) {
                    return true;
                  }
                  return false;
                }, builder: (context, state) {
                  if (state.listPokemon.isNotEmpty) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: state.listPokemon.length,
                          itemBuilder: (context, index) => Padding(
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
                                    child: Dismissible(
                                      key: UniqueKey(),
                                      direction: DismissDirection.endToStart,
                                      onDismissed: (direction) {},
                                      confirmDismiss: (direction) {
                                        return showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                                title: const Text(
                                                    "Confirmar eliminar favorito?"),
                                                content: Text(
                                                    "¿Estás seguro/a de que quieres eliminar a ${state.listPokemon[index].namePokemon}?"),
                                                actions: [
                                                  TextButton(
                                                    child:
                                                        const Text("Cancelar"),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(false),
                                                  ),
                                                  TextButton(
                                                    child: const Text("Seguro"),
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              FavoriteListBloc>()
                                                          .add(RemoveFromFavoriteList(
                                                              pokemonId: state
                                                                  .listPokemon[
                                                                      index]
                                                                  .nome));
                                                      Navigator.of(context)
                                                          .pop(true);
                                                    },
                                                  )
                                                ]);
                                          },
                                        );
                                      },
                                      background: Container(
                                        alignment: Alignment.centerRight,
                                        decoration: BoxDecoration(
                                            color:
                                                AppColors.backgroundDeleteColor,
                                            borderRadius:
                                                BorderRadius.circular(15.r)),
                                        child: Padding(
                                          padding: EdgeInsets.all(32.w),
                                          child: const Icon(
                                            Icons.delete_forever_outlined,
                                            size: 38,
                                            color: AppColors.defaultWhite,
                                          ),
                                        ),
                                      ),
                                      child: PokemonCard(
                                        currentPokemon:
                                            state.listPokemon[index],
                                      ),
                                    )),
                              )),
                    );
                  } else {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 215.h,
                            width: 185.w,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImageAsset.noPokemonFavorite),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            Strings.titleNoPokemonFavorite,
                            textAlign: TextAlign.center,
                            style: AppStyle.defaultText(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.titleNoPokemonColor,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Text(
                            Strings.descriptionNoPokemonFavorite,
                            textAlign: TextAlign.center,
                            style: AppStyle.defaultText(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.descriptionNoPokemonColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                });
              },
            )),
      ],
    ));
  }
}
