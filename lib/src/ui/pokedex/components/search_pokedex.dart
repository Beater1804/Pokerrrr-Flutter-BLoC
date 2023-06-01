import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokerrrr_bloc/src/blocs/search_pokemon/search_pokemon_bloc.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';

class SearchPokedex extends StatelessWidget {
  final TextEditingController searchController;
  const SearchPokedex({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Icon(
              Icons.search,
              color: AppColors.iconSearchPokedex,
              size: 24,
            ),
          ),
          hintText: Strings.hintSearchPokedex,
          hintStyle: AppStyle.defaultText(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.hintSearchPokedex,
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 4),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.borderSearchPokedex, width: 1.5),
              borderRadius: BorderRadius.circular(30)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.borderSearchPokedex, width: 1.5),
              borderRadius: BorderRadius.circular(30)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.borderSearchPokedex, width: 1.5),
              borderRadius: BorderRadius.circular(30)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.borderSearchPokedex, width: 1.5),
              borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.borderSearchPokedex, width: 1.5),
              borderRadius: BorderRadius.circular(30)),
        ),
        onChanged: (value) {
          context
              .read<SearchPokemonBloc>()
              .add(SearchByKeyword(searchController: value));
        },
      ),
    );
  }
}
