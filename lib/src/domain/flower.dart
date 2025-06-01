import 'package:freezed_annotation/freezed_annotation.dart';

part 'flower.freezed.dart';
part 'flower.g.dart';

@freezed
sealed class Flower with _$Flower {
  const factory Flower({
    required int id,
    required String name,
    required String picture,
    required String character,
    required String meaning,
    required String details,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Flower;

  factory Flower.fromJson(Map<String, Object?> json) => _$FlowerFromJson(json);
}
