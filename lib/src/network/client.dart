import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final client = Dio(
  BaseOptions(
    baseUrl: dotenv.env['API_URL']!,
    headers: {'accept': 'application/json'},
  ),
);
