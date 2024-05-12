import 'package:go_router/go_router.dart';
import 'package:product/feature_home/domain/entitys/product.dart';
import 'package:product/feature_home/presentation/screen/home_screen.dart';

import '../../feature_home/presentation/screen/product_detail_screen.dart';
import '../../feature_home/presentation/screen/user_screen.dart';

final productRoutes = [
  GoRoute(
    path: 'detail',
    builder: (context, state) {
      final product = state.extra as ProductToDisplay;
      return ProductDetailPageScreen(
        product: product,
      );
    },
  )
];

final userRouters = [
  GoRoute(path: 'user',
  builder: (context,state) {
    return const UserPage();
  })
];

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomePage();
    },
  )
]);
