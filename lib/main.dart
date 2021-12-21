import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxshopapp/screens/product_detail_screen.dart';
import 'package:getxshopapp/screens/product_overview_screen.dart';

import 'bindings/product_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Shop',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato'),
      getPages: [
        GetPage(
          //
          name: "/product_overview",
          page: () => ProductsOverviewScreen(),
          binding: ProductBinding(),
        ),
        GetPage(
          name: "/product_detail",
          page: () => ProductDetailScreen(),
        ),
      ],
      initialRoute: "/product_overview",
      // home: ProductsOverviewScreen(),
    );
  }
}
