import 'package:go_router/go_router.dart';
import 'package:product/feature_home/presentation/screen/home_screen.dart';
import 'package:product/feature_home/presentation/screen/product_detail_screen.dart';

import '../../feature_home/domain/entitys/product.dart';
final productRoutesForRoot = [
  GoRoute(
    path: '/detail',
    name: 'detail',
    builder: (context, state) {
      final product = state.extra as ProductToDisplay;
      return ProductDetailPageScreen(product: product,);
    },
  )
];

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'detail',
          name: 'detail',
          builder: (context, state) {
            final product = state.extra as ProductToDisplay;
            return ProductDetailPageScreen(product: product,);
          },
        )
      ]
  )
]);