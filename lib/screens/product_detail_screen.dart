import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxshopapp/controllers/product_controller.dart';

class ProductDetailScreen extends StatelessWidget {
  //final String title;

  //ProductDetailScreen();

  @override
  Widget build(BuildContext context) {
    List<String> productId = Get.arguments;
    final controller = Get.find<ProductController>();
    final loadedProduct = controller.findById(productId[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Container(),
    );
  }
}
