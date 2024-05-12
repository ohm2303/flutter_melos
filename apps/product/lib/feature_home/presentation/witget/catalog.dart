import 'package:core_ui/theme/color/theme_provider.dart';
import 'package:core_ui/widgets/elements/texts/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/feature_home/presentation/witget/product_list.dart';
import '../../domain/entitys/product.dart';


class Catalog extends ConsumerWidget{
  final String title;
  final List<ProductToDisplay> products;

  const Catalog({super.key,required this.products,required this.title});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final color = ref.watch(appThemeProvider).themeColor;
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            child:TextTitle(title: title,color: color.text,),
          ),
          ProductList(products: products,)
        ],
      ),
    );
  }

}