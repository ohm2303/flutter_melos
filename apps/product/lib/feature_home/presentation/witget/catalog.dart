import 'package:core_ui/widgets/elements/texts/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:product/feature_home/presentation/witget/product_list.dart';
import '../../domain/entitys/product.dart';


class Catalog extends StatelessWidget{
  final String title;
  final List<ProductToDisplay> products;
  final OnSelectProduct? onSelectProduct;

  const Catalog({super.key,required this.products,required this.title, this.onSelectProduct});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            child: TextTitle(title: title),
          ),
          ProductList(products: products,onSelectProduct: onSelectProduct,)
        ],
      ),
    );
  }

}