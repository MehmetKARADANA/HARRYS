// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      name: json['name'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      house: json['house'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'image': instance.image,
    };
