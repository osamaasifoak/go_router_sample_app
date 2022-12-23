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
          path: 'details/:name',
          builder: (BuildContext context, GoRouterState state) {
            final name = state.params['name']!;
            return DetailScreen(
              name: name,
            );
          },
        ),
        GoRoute(
          path: 'detailsQueryParam',
          builder: (BuildContext context, GoRouterState state) {
            final name = state.queryParams['name']!;
            return DetailScreen(
              name: name,
            );
          },
        ),
        GoRoute(
          path: 'detailsWithExtraParam',
          builder: (BuildContext context, GoRouterState state) {
            final name = state.extra! as String;
            return DetailScreen(
              name: name,
            );
          },
        ),
      ],
    ),
  ],
);
