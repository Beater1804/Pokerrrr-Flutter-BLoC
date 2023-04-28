import 'package:pokerrrr_bloc/src/models/elemento.dart';
import 'package:pokerrrr_bloc/src/models/evolucoes.dart';

class Pokemon {
  final bool isFavorite;
  final String backgroundElemento;
  final String elementoImage;
  final String elementoOutlineImage;
  final String avatarPokemon;
  final String namePokemon;
  final String nome;
  final List<Elemento> listElemento;
  final String descriptionPokemon;
  final double peso;
  final double altura;
  final String categoria;
  final String habilidade;
  final double? generoMale;
  final List<Elemento> listFraquezas;
  final List<Evolucoes> listEvolucoes;

  const Pokemon({
    required this.isFavorite,
    required this.backgroundElemento,
    required this.elementoImage,
    required this.elementoOutlineImage,
    required this.avatarPokemon,
    required this.namePokemon,
    required this.nome,
    required this.listElemento,
    required this.descriptionPokemon,
    required this.peso,
    required this.altura,
    required this.categoria,
    required this.habilidade,
    this.generoMale,
    required this.listFraquezas,
    required this.listEvolucoes,
  });
}
