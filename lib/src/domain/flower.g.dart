// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flower.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Flower _$FlowerFromJson(Map<String, dynamic> json) => _Flower(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  picture: json['picture'] as String,
  character: json['character'] as String,
  meaning: json['meaning'] as String,
  details: json['details'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$FlowerToJson(_Flower instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'picture': instance.picture,
  'character': instance.character,
  'meaning': instance.meaning,
  'details': instance.details,
  'created_at': instance.createdAt.toIso8601String(),
};
