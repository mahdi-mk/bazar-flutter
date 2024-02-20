import 'package:flutter_app/src/features/products/domain/product.dart';

abstract class ProductRepository {
  Future<Product> fetchProduct(String id);
}
