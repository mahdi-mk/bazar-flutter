import 'package:flutter_app/src/features/products/data/category/category_repository.dart';
import 'package:flutter_app/src/features/products/domain/category.dart';
import 'package:flutter_app/src/mock/categories.dart';
import 'package:flutter_app/src/mock/products.dart';

class FakeCategoryRepositor implements CategoryRepository {
  @override
  Future<Category> fetchCategory(String id) {
    final category = fakeCategories
        .where(
          (element) => element.id == id,
        )
        .first;

    category.products = fakeProducts.getRange(0, 3).toList();

    return Future.value(category);
  }
}
