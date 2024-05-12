import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_ui/widgets/compounds/loading/loading_indicator.dart';
import 'package:core_ui/widgets/compounds/navbar/home_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../mock/products.dart';
import '../../domain/entitys/product.dart';
import '../../domain/port_product/service.dart';
import '../viewmodels/home_viewmodel.dart';
import '../witget/catalog.dart';
import '../witget/home_jumbotron.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final IProductService service = getIt.get<IProductService>();
  bool isLoading = false;
  int currentPageIndex = 0;

  List<List<ProductToDisplay>> products = [];
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(homeViewModelProvider.notifier).getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeVM = ref.watch(homeViewModelProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HomeNavbar(),
            Expanded(
                child: homeVM.loading
                    ? const Loading()
                    : ListView.builder(
                        itemCount: homeVM.categories.length,
                        itemBuilder: (context, index) {
                          return Column(
                            key: UniqueKey(),
                            children: [
                              HomeJumbotron(
                                  imageUrl:
                                      categoryImages[homeVM.categories[index]]!,
                                  title: homeVM.categories[index].toUpperCase(),
                                  buttonTitle: 'View Collection'),
                              Catalog(
                                title: 'All products',
                                products: homeVM.products[index],
                              ),
                              const SizedBox(
                                height: 24,
                              )
                            ],
                          );
                        },
                      ))
          ],
        ),
      ),
    );
  }
}
