import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/blocs/main_page/main_page_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/lists.dart';
import 'package:pokerrrr_bloc/src/ui/main_page/components/icon_navigation.dart';

class CustomBottomBar extends StatelessWidget {
  final int itemSize;
  const CustomBottomBar({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          for (var i = 0; i < itemSize; i++)
            BlocBuilder<MainPageBloc, MainPageState>(
              builder: (context, state) {
                if (state is MainPageInitial) {
                  return InkWell(
                    onTap: () {
                      context
                          .read<MainPageBloc>()
                          .add(UpdatePage(currentIndex: i));
                    },
                    child: Container(
                      child: state.currentIndex == i
                          ? IconNavigation(
                              icon: Lists.listIcon[i],
                              iconSelect: Lists.listIconSelect[i],
                              title: Lists.listMenuName[i],
                              isSelect: true,
                            )
                          : IconNavigation(
                              icon: Lists.listIcon[i],
                              iconSelect: Lists.listIconSelect[i],
                              title: Lists.listMenuName[i],
                            ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
        ],
      ),
    );
  }
}
