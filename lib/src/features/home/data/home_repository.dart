import 'package:flutter_app/src/features/home/domain/section.dart';

abstract class HomeRepository {
  Future<List<Section>> fetchData();
}
