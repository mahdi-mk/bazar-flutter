import 'package:flutter_app/src/constants/uuid.dart';
import 'package:flutter_app/src/features/home/domain/section.dart';
import 'package:flutter_app/src/mock/categories.dart';
import 'package:flutter_app/src/mock/products.dart';

final fakeHome = [
  Section(
    id: uuid.v1(),
    heading: "Shop by Category",
    type: SectionType.categories,
    data: fakeCategories.getRange(0, 10).toList(),
  ),
  Section(
    id: uuid.v1(),
    heading: "New Arrival",
    type: SectionType.products,
    data: fakeProducts.getRange(0, 3).toList(),
  ),
  Section(
    id: uuid.v1(),
    heading: "Popular",
    type: SectionType.products,
    data: fakeProducts.getRange(3, 6).toList(),
  ),
  Section(
    id: uuid.v1(),
    heading: "On Sale",
    type: SectionType.products,
    data: fakeProducts.getRange(6, 10).toList(),
  ),
];
