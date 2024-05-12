import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/feature_home/presentation/witget/product_card.dart';
import '../../domain/entitys/product.dart';
import '../viewmodels/home_viewmodel.dart';

typedef OnSelectProduct = Function(ProductToDisplay product);

class ProductList extends ConsumerWidget {
  final List<ProductToDisplay> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeVMNotifier = ref.read(homeViewModelProvider.notifier);

    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap:(product) => homeVMNotifier.onSelectProduct(context, product),
          );
        },
      ),
    );
  }
}
