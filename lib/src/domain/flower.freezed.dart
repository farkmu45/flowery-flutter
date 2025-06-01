// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flower.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Flower {

 int get id; String get name; String get picture; String get character; String get meaning; String get details;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of Flower
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlowerCopyWith<Flower> get copyWith => _$FlowerCopyWithImpl<Flower>(this as Flower, _$identity);

  /// Serializes this Flower to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Flower&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.character, character) || other.character == character)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.details, details) || other.details == details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,picture,character,meaning,details,createdAt);

@override
String toString() {
  return 'Flower(id: $id, name: $name, picture: $picture, character: $character, meaning: $meaning, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FlowerCopyWith<$Res>  {
  factory $FlowerCopyWith(Flower value, $Res Function(Flower) _then) = _$FlowerCopyWithImpl;
@useResult
$Res call({
 int id, String name, String picture, String character, String meaning, String details,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$FlowerCopyWithImpl<$Res>
    implements $FlowerCopyWith<$Res> {
  _$FlowerCopyWithImpl(this._self, this._then);

  final Flower _self;
  final $Res Function(Flower) _then;

/// Create a copy of Flower
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? picture = null,Object? character = null,Object? meaning = null,Object? details = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Flower implements Flower {
  const _Flower({required this.id, required this.name, required this.picture, required this.character, required this.meaning, required this.details, @JsonKey(name: 'created_at') required this.createdAt});
  factory _Flower.fromJson(Map<String, dynamic> json) => _$FlowerFromJson(json);

@override final  int id;
@override final  String name;
@override final  String picture;
@override final  String character;
@override final  String meaning;
@override final  String details;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of Flower
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlowerCopyWith<_Flower> get copyWith => __$FlowerCopyWithImpl<_Flower>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlowerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flower&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.character, character) || other.character == character)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.details, details) || other.details == details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,picture,character,meaning,details,createdAt);

@override
String toString() {
  return 'Flower(id: $id, name: $name, picture: $picture, character: $character, meaning: $meaning, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FlowerCopyWith<$Res> implements $FlowerCopyWith<$Res> {
  factory _$FlowerCopyWith(_Flower value, $Res Function(_Flower) _then) = __$FlowerCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String picture, String character, String meaning, String details,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$FlowerCopyWithImpl<$Res>
    implements _$FlowerCopyWith<$Res> {
  __$FlowerCopyWithImpl(this._self, this._then);

  final _Flower _self;
  final $Res Function(_Flower) _then;

/// Create a copy of Flower
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? picture = null,Object? character = null,Object? meaning = null,Object? details = null,Object? createdAt = null,}) {
  return _then(_Flower(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
