
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product/feature_home/domain/entitys/product.dart';
import 'package:product/feature_home/presentation/screen/home_screen.dart';
import 'package:product/infrastucture/router/router.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [...productRoutes,...userRouters]
  ),
]);
