import 'package:flowery/src/domain/flower.dart';
import 'package:flowery/src/pages/detail.dart';
import 'package:flowery/src/pages/home.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Home();
      },
    ),
    GoRoute(
      path: '/:id',
      builder: (context, state) {
        final flower = state.extra as Flower;
        return Detail(flower);
      },
    ),
  ],
);
