import 'package:flutter_app/src/features/auth/data/auth_repository.dart';
import 'package:flutter_app/src/features/auth/data/fake_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenController extends StateNotifier<AsyncValue<void>> {
  HomeScreenController({
    required this.authRepository,
  }) : super(const AsyncValue.data(null));

  final AuthRepository authRepository;

  Future<bool> logout() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => authRepository.logout());

    return !state.hasError;
  }
}

final homeScreenControllerProvider =
    StateNotifierProvider.autoDispose<HomeScreenController, AsyncValue<void>>(
  (ref) {
    return HomeScreenController(
      authRepository: ref.watch(authRepositoryProvider),
    );
  },
);
