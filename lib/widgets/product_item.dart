import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  ProductItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          GridTile(
            child: GestureDetector(
              onTap: () {
                Get.toNamed(
                  "/product_detail",
                  arguments: [
                    id
                  ], //Argumanım tek ise direkt string sekilde gonderebiliyorum.Eger argumanlarım birden fazla ise liste seklinde yollamam gerekiyor exp [id, "2"].
                );
              },
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            alignment: const Alignment(1, -1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Text(
                "\$$price",
                style: const TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
