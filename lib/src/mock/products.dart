import 'package:flutter_app/src/constants/uuid.dart';
import 'package:flutter_app/src/features/products/domain/product.dart';

final fakeProducts = [
  Product(
    id: uuid.v1(),
    title: 'Blank Hoddie',
    description: '',
    imageUrl: 'assets/images/products/01.jpg',
    price: 35,
  ),
  Product(
    id: uuid.v1(),
    title: '2 Colored Hoddie',
    description: '',
    imageUrl: 'assets/images/products/02.jpg',
    price: 60,
  ),
  Product(
    id: uuid.v1(),
    title: 'Cozy Hoddie',
    description: '',
    imageUrl: 'assets/images/products/03.jpg',
    price: 75,
  ),
  Product(
    id: uuid.v1(),
    title: 'Street Style Cargo Pants',
    description: '',
    imageUrl: 'assets/images/products/04.jpg',
    price: 89,
  ),
  Product(
    id: uuid.v1(),
    title: 'Kelawat Hat',
    description: '',
    imageUrl: 'assets/images/products/05.jpg',
    price: 76,
  ),
  Product(
    id: uuid.v1(),
    title: 'Summer Hat',
    description: '',
    imageUrl: 'assets/images/products/06.jpg',
    price: 55,
  ),
  Product(
    id: uuid.v1(),
    title: 'The Boss Jacket',
    description: '',
    imageUrl: 'assets/images/products/07.jpg',
    price: 299,
  ),
  Product(
    id: uuid.v1(),
    title: 'Waterproof Jacket',
    description: '',
    imageUrl: 'assets/images/products/08.jpg',
    price: 230,
  ),
  Product(
    id: uuid.v1(),
    title: 'Blank T-Shirt',
    description: '',
    imageUrl: 'assets/images/products/09.jpg',
    price: 34,
  ),
  Product(
    id: uuid.v1(),
    title: 'Franklin Hat',
    description: '',
    imageUrl: 'assets/images/products/10.jpg',
    price: 99,
  ),
];
