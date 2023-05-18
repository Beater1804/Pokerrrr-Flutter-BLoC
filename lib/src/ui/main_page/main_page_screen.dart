import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/main_page/main_page_bloc.dart';
import 'package:pokerrrr_bloc/src/ui/conta/conta_screen.dart';
import 'package:pokerrrr_bloc/src/ui/favoritos/favoritos_screen.dart';
import 'package:pokerrrr_bloc/src/ui/main_page/components/custom_bottom_bar.dart';
import 'package:pokerrrr_bloc/src/ui/pokedex/pokedex_screen.dart';
import 'package:pokerrrr_bloc/src/ui/regioes/regioes_screen.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: BlocBuilder<MainPageBloc, MainPageState>(
          builder: (context, state) {
            if (state is MainPageInitial) {
              return IndexedStack(
                index: state.currentIndex,
                children: const [
                  PokedexScreen(),
                  RegioesScreen(),
                  FavoritosScreen(),
                  ContaScreen()
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(itemSize: 4),
    );
  }
}
