import 'package:flutter_app/src/features/products/domain/product.dart';

class Category {
  Category({
    required this.id,
    required this.name,
  }) : products = [];

  final String id;
  final String name;
  List<Product> products;
}
