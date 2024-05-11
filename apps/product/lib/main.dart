import 'package:flutter/material.dart';

void main() {
  runApp(const ProductHomepage());
}

class ProductHomepage extends StatelessWidget {
  const ProductHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductHomepage(),
    );
  }
}
