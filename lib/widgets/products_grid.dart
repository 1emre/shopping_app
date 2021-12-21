import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxshopapp/controllers/product_controller.dart';
import 'package:getxshopapp/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: controller.items.length,
      itemBuilder: (ctx, i) => ProductItem(
        id: controller.items[i].id,
        title: controller.items[i].title,
        imageUrl: controller.items[i].imageUrl,
        price: controller.items[i].price,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
