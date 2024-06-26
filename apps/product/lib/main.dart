import 'package:core/dependency_injection/inject.dart';
import 'package:core/router/router.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/material.dart';
import 'package:product/infrastucture/dependency_injection/inject.dart';


void main() {
  registerCoreServices();
  registerProductServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
