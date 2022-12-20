import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample_app/screens/detail_screen.dart';
import 'package:go_router_sample_app/screens/home_screen.dart';

final GoRouter appRoutes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailScreen();
          },
        ),
      ],
    ),
  ],
);
