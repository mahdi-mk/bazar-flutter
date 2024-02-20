import 'package:flutter_app/src/features/home/data/fake_home_repository.dart';
import 'package:flutter_app/src/features/home/data/home_repository.dart';
import 'package:flutter_app/src/features/home/domain/section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return FakeHomeRepository();
});

final homeDataProvider = FutureProvider<List<Section>>((ref) {
  return ref.watch(homeRepositoryProvider).fetchData();
});
