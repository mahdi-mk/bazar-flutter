import 'package:flutter_app/src/features/home/data/home_repository.dart';
import 'package:flutter_app/src/features/home/domain/section.dart';
import 'package:flutter_app/src/mock/home.dart';

class FakeHomeRepository implements HomeRepository {
  @override
  Future<List<Section>> fetchData() async {
    return Future.value(fakeHome);
  }
}
