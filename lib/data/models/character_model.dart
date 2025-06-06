import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  final String name;
  final String species;
  final String gender;
  final String house;
  final String image;

  CharacterModel({
    required this.name,
    required this.species,
    required this.gender,
    required this.house,
    required this.image,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}
