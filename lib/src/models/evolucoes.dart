import 'package:pokerrrr_bloc/src/models/mini_elemento.dart';

class Evolucoes {
  final String backgroundEvolucoes;
  final String avatarPokemon;
  final String namePokemon;
  final String nome;
  final List<MiniElemento> listMiniElementos;
  final String? level;
  final String? descriptionEvolucoes;

  const Evolucoes({
    required this.backgroundEvolucoes,
    required this.avatarPokemon,
    required this.namePokemon,
    required this.nome,
    required this.listMiniElementos,
    this.level,
    this.descriptionEvolucoes,
  });
}
