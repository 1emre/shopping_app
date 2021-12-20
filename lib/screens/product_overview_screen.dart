import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxshopapp/controllers/product_controller.dart';
import 'package:getxshopapp/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final controller = Get.find<ProductController>();
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: controller.loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
            id: controller.loadedProducts[i].id,
            title: controller.loadedProducts[i].title,
            imageUrl: controller.loadedProducts[i].imageUrl,
          price: controller.loadedProducts[i].price),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
