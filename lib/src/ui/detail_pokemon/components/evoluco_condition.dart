import 'package:flutter/material.dart';
import 'package:pokerrrr_bloc/src/commons/evoluco_widget.dart';
import 'package:pokerrrr_bloc/src/models/evolucoes.dart';

class EvolucoCondition extends StatelessWidget {
  final List<Evolucoes> evolucoes;
  const EvolucoCondition({
    Key? key,
    required this.evolucoes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(evolucoes.length, (index) {
          return EvolucoWidget(
            currentEvoluco: evolucoes[index],
          );
        }),
      ],
    );
  }
}
