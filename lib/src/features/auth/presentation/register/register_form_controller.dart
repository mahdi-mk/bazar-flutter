import 'package:flutter_app/src/features/auth/data/auth_repository.dart';
import 'package:flutter_app/src/features/auth/data/fake_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterFormController extends StateNotifier<AsyncValue<void>> {
  RegisterFormController({
    required this.authRepository,
  }) : super(const AsyncValue.data(null));

  final AuthRepository authRepository;

  Future<bool> register(String name, String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => authRepository.register(name, email, password),
    );

    return !state.hasError;
  }
}

final registerFormControllerProvider =
    StateNotifierProvider<RegisterFormController, AsyncValue<void>>(
  (ref) {
    return RegisterFormController(
      authRepository: ref.watch(authRepositoryProvider),
    );
  },
);
