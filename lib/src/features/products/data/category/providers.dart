import 'package:flutter_app/src/features/products/data/category/category_repository.dart';
import 'package:flutter_app/src/features/products/data/category/fake_category_repository.dart';
import 'package:flutter_app/src/features/products/domain/category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) {
    return FakeCategoryRepositor();
  },
);

final categoryDataProvider =
    FutureProvider.autoDispose.family<Category, String>(
  (ref, id) async {
    return ref.watch(categoryRepositoryProvider).fetchCategory(id);
  },
);
