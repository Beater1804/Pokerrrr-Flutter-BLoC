// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  final String nameRegioes;

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
    this.nameRegioes = 'none',
  });

  Pokemon copyWith({
    bool? isFavorite,
    String? backgroundElemento,
    String? elementoImage,
    String? elementoOutlineImage,
    String? avatarPokemon,
    String? namePokemon,
    String? nome,
    List<Elemento>? listElemento,
    String? descriptionPokemon,
    double? peso,
    double? altura,
    String? categoria,
    String? habilidade,
    double? generoMale,
    List<Elemento>? listFraquezas,
    List<Evolucoes>? listEvolucoes,
    String? nameRegioes,
  }) {
    return Pokemon(
      isFavorite: isFavorite ?? this.isFavorite,
      backgroundElemento: backgroundElemento ?? this.backgroundElemento,
      elementoImage: elementoImage ?? this.elementoImage,
      elementoOutlineImage: elementoOutlineImage ?? this.elementoOutlineImage,
      avatarPokemon: avatarPokemon ?? this.avatarPokemon,
      namePokemon: namePokemon ?? this.namePokemon,
      nome: nome ?? this.nome,
      listElemento: listElemento ?? this.listElemento,
      descriptionPokemon: descriptionPokemon ?? this.descriptionPokemon,
      peso: peso ?? this.peso,
      altura: altura ?? this.altura,
      categoria: categoria ?? this.categoria,
      habilidade: habilidade ?? this.habilidade,
      generoMale: generoMale ?? this.generoMale,
      listFraquezas: listFraquezas ?? this.listFraquezas,
      listEvolucoes: listEvolucoes ?? this.listEvolucoes,
      nameRegioes: nameRegioes ?? this.nameRegioes,
    );
  }
}
