import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';

class SearchPokedex extends StatelessWidget {
  const SearchPokedex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
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
      ),
    );
  }
}
