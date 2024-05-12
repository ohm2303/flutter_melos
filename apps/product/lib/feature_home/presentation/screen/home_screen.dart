import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_ui/widgets/compounds/loading/loading_indicator.dart';
import 'package:core_ui/widgets/compounds/navbar/home_navbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../mock/products.dart';
import '../../domain/entitys/product.dart';
import '../../domain/port_product/service.dart';
import '../witget/catalog.dart';
import '../witget/home_jumbotron.dart';


typedef onSelectProduct = Function(ProductToDisplay product);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IProductService service = getIt.get<IProductService>();
  bool isLoading = false;
  int currentPageIndex = 0;

  List<List<ProductToDisplay>> products = [];
  List<String> categories = [];

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  void getProducts() async {
    setState(() {
      isLoading = true;
    });

    final categories = await service.getCategories();
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    final products = await Future.wait(productsFetchers);

    setState(() {
      this.categories = categories;
      this.products = products;
    });
  }

  void onSelectProduct(ProductToDisplay product) {
    context.go("/detail", extra: product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HomeNavbar(),
            Expanded(
                child: !isLoading
                    ? const Loading()
                    : ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              HomeJumbotron(
                                  imageUrl: categoryImages[categories[index]]!,
                                  title: categories[index].toUpperCase(),
                                  buttonTitle: 'View Collection'),
                              Catalog(
                                title: 'All products',
                                products: products[index],
                                onSelectProduct: onSelectProduct,
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 1) {
              context.go('/user');
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'User Page',
          ),
        ],
      ),
    );
  }
}
