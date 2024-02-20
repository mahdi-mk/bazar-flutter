import 'package:flutter_app/src/features/products/data/product/product_repository.dart';
import 'package:flutter_app/src/features/products/domain/product.dart';
import 'package:flutter_app/src/mock/products.dart';

class FakeProductRepository extends ProductRepository {
  @override
  Future<Product> fetchProduct(String id) {
    final product = fakeProducts.where((element) => element.id == id).first;

    return Future.value(product);
  }
}
