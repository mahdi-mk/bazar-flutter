import 'package:flutter_app/src/features/products/data/product/fake_product_repository.dart';
import 'package:flutter_app/src/features/products/data/product/product_repository.dart';
import 'package:flutter_app/src/features/products/domain/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return FakeProductRepository();
});

final productDataProvider = FutureProvider.autoDispose.family<Product, String>(
  (ref, id) async {
    return ref.watch(productRepositoryProvider).fetchProduct(id);
  },
);
