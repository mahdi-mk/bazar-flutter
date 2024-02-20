import 'package:flutter_app/src/features/products/domain/category.dart';

abstract class CategoryRepository {
  Future<Category> fetchCategory(String id);
}
