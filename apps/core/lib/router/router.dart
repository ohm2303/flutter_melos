import 'package:core/layouts/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product/feature_home/presentation/screen/home_screen.dart';
import 'package:product/feature_home/presentation/screen/user_screen.dart';
import 'package:product/infrastucture/router/router.dart';

final routes = [
  'home',
  'user'
];



final router = GoRouter(routes: [
  ShellRoute(
      pageBuilder: (context, state, child) {
        return NoTransitionPage(child: BottomNavigation(
          location: state.matchedLocation,
          child: child,
        ));
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          pageBuilder: (context, state) => const NoTransitionPage(child: HomePage()),
        ),
        GoRoute(
          path: '/user',
          name: 'user',
          pageBuilder: (context, state) => const NoTransitionPage(child: UserPage()),
        )
      ]
  ),
  ...productRoutesForRoot,
]);