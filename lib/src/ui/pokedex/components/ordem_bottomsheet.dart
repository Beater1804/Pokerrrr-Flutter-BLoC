import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/pokedex/pokedex_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';

class OrdemBottomSheet extends StatelessWidget {
  const OrdemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: SizedBox(
        height: 0.4.sh,
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            backgroundColor: AppColors.defaultWhite,
            centerTitle: true,
            automaticallyImplyLeading: false,
            pinned: true,
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 10),
                  child: Container(
                    height: 3,
                    width: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: AppColors.pinBottomSheetPokedex,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    Strings.titleOrdemBottomSheetPokedex,
                    style: AppStyle.defaultText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: Lists.listOrdem.length,
                itemBuilder: (context, index) {
                  return BlocBuilder<PokedexBloc, PokedexState>(
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          context.read<PokedexBloc>().add(ChooseOrdem(
                              selectedOrdem: Lists.listOrdem[index]));
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 42,
                            width: 0.8.sw,
                            decoration: BoxDecoration(
                              color: AppColors.backgroundButtonSearchBySelect,
                              borderRadius: BorderRadius.circular(49),
                            ),
                            child: Center(
                              child: Text(
                                Lists.listOrdem[index],
                                style: AppStyle.defaultText(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.defaultWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          )
        ]),
      ),
    );
  }
}
