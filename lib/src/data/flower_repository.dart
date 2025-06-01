import 'package:flowery/src/domain/flower.dart';
import 'package:flowery/src/network/client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flower_repository.g.dart';

@riverpod
Future<List<Flower>> getFlowers(Ref ref) async {
  final res = await client.get('/flowers');
  return List.from(res.data['data'].map((i) => Flower.fromJson(i)));
}
