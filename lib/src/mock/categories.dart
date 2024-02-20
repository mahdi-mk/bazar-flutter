import 'package:flutter_app/src/constants/uuid.dart';
import 'package:flutter_app/src/features/products/domain/category.dart';

final fakeCategories = [
  Category(
    id: uuid.v1(),
    name: 'Men',
  ),
  Category(
    id: uuid.v1(),
    name: 'Women',
  ),
  Category(
    id: uuid.v1(),
    name: 'Kids',
  ),
  Category(
    id: uuid.v1(),
    name: 'Makeup',
  ),
  Category(
    id: uuid.v1(),
    name: 'Sports',
  ),
  Category(
    id: uuid.v1(),
    name: 'Accessories',
  ),
  Category(
    id: uuid.v1(),
    name: 'Shoes',
  ),
  Category(
    id: uuid.v1(),
    name: 'Bags',
  ),
  Category(
    id: uuid.v1(),
    name: 'Gifts',
  ),
  Category(
    id: uuid.v1(),
    name: 'Health Care',
  ),
];
