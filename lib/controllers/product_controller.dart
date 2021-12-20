import 'package:get/get.dart';
import 'package:getxshopapp/models/product.dart';

class ProductController extends GetxController {
  final List<Product> _loadedProducts = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'The red shirt - it is pretty red!',
        price: 29.99,
        imageUrl:
            'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSWUVL1THki4uso4KdFok9Q1190fincZPmVL3MQdV_CQZw2hDbfuz44xQKFBjR_CsQCrVp4JfL_1xSbAWexGrf2F8HrBAH0SmMayATx5_FtE8EYRY9g3maR&usqp=CAE'),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://www.na-kd.com/globalassets/nakd_tailored_wide_leg_trousers_1594-000442-4070_01c.jpg?ref=FE19CE8F22'),
    Product(
        id: 'p3',
        title: 'Yellow Scarf',
        description: 'Warm and cozy - exactly what you need for the winter.',
        price: 19.99,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV40q2hS2EpIbRK-gc6Sgj2xufsRFfRUjBiw&usqp=CAU'),
    Product(
        id: 'p4',
        title: 'Breed',
        description: 'A nice pair of trousers.',
        price: 3.99,
        imageUrl:
            'https://cdn.yemek.com/mnresize/1250/833/uploads/2020/03/somun-ekmek-yeni-one-cikan.jpg'),
  ];

  List<Product> get loadedProducts {
    return [..._loadedProducts];
  }
}
