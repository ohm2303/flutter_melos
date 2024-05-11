

import 'package:core_libs/dependency_injection/get_it.dart';

import '../entitys/product.dart';
import '../port_product/repository.dart';
import '../port_product/service.dart';

class ProductService extends IProductService {
  final IProductRepository repository = getIt.get<IProductRepository>();

  @override
  Future<List<ProductToDisplay>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts
        .map((product) => ProductToDisplay(
            id: product.id.toString(),
            category: product.category!,
            name: product.title!,
            imageUrl: product.image!,
            price: product.price!.toDouble(),
            description: product.description,
            rating: product.rating?.rate))
        .toList();
  }

  @override
  Future<List<String>> getCategories() async {
    return await repository.getCategories();
  }
}
