import 'package:core_libs/dependency_injection/get_it.dart';

import '../../feature_home/data/repository/product_repository.dart';
import '../../feature_home/domain/port_product/repository.dart';
import '../../feature_home/domain/port_product/service.dart';
import '../../feature_home/domain/services/product_service.dart';

void registerProductServices(){
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());
}