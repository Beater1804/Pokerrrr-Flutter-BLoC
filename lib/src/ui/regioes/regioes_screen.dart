import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/regioes_list/regioes_list_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/search_regioes/search_regioes_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/ui/regioes/components/regioes_card.dart';
import 'package:pokerrrr_bloc/src/ui/search_regioes/search_regioes_screen.dart';

class RegioesScreen extends StatelessWidget {
  const RegioesScreen({super.key});

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
            "Regiões",
            style: AppStyle.defaultText(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.titlePageColor,
            ),
          ),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: BlocBuilder<RegioesListBloc, RegioesListState>(
              builder: (context, state) {
            if (state is RegioesListInitial) {
              return const CircularProgressIndicator();
            }
            if (state is RegioesListLoaded) {
              return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: state.listRegioes.length,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        context.read<SearchRegioesBloc>().add(LoadTitle(
                            title: state.listRegioes[index].nameRegioes));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SearchRegioesScreen()),
                        );
                      },
                      child: RegioesCard(regioes: state.listRegioes[index])));
            }
            return Container(
              height: 50,
              width: 50,
              color: Colors.red,
            );
          }),
        ),
      ],
    ));
  }
}
