import '../../data/models/productModel.dart';

abstract class IProductRepository{
  Future<List<ProductApi>> getByCategory(String category);
  Future<List<String>> getCategories();
}