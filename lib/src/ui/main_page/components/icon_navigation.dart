import 'package:flutter/material.dart';

class IconNavigation extends StatelessWidget {
  final bool isSelect;
  final String icon;
  final String iconSelect;
  final String title;
  const IconNavigation({
    super.key,
    this.isSelect = false,
    required this.icon,
    required this.iconSelect,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 60,
      child: isSelect
          ? Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(iconSelect),
                ),
                Text(title),
              ],
            )
          : Container(
              height: 40,
              width: 40,
              child: Image.asset(icon),
            ),
    );
  }
}
