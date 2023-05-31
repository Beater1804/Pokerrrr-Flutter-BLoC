// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'filter_pokemon_bloc.dart';

class FilterPokemonState extends Equatable {
  final String typeName;
  final String sortBy;
  const FilterPokemonState({
    this.typeName = Strings.tiposOne,
    this.sortBy = Strings.ordemOne,
  });

  @override
  List<Object> get props => [typeName, sortBy];

  FilterPokemonState copyWith({
    String? typeName,
    String? sortBy,
  }) {
    return FilterPokemonState(
      typeName: typeName ?? this.typeName,
      sortBy: sortBy ?? this.sortBy,
    );
  }
}
