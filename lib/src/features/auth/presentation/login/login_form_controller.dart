import 'package:flutter_app/src/features/auth/data/auth_repository.dart';
import 'package:flutter_app/src/features/auth/data/fake_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginFormController extends StateNotifier<AsyncValue<void>> {
  LoginFormController({
    required this.authRepository,
  }) : super(const AsyncValue.data(null));

  final AuthRepository authRepository;

  Future<bool> login(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => authRepository.login(email, password));

    return !state.hasError;
  }
}

final loginFormControllerProvider =
    StateNotifierProvider.autoDispose<LoginFormController, AsyncValue<void>>(
  (ref) {
    return LoginFormController(
      authRepository: ref.watch(authRepositoryProvider),
    );
  },
);
