import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jackson_website/pages/homeBrewed_app.dart';
import 'package:jackson_website/pages/jackson_home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const JacksonHomePage();
      },
    ),
    GoRoute(
      path: '/homeBrewed',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeBrewedPage();
      },
    ),
  ],
);
