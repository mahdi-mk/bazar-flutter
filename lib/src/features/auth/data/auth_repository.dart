import 'package:flutter_app/src/features/auth/domain/user.dart';

abstract class AuthRepository {
  Stream<User?> authStateChanges();

  User? get authUser;

  Future<void> register(String name, String email, String password);

  Future<void> login(String email, String password);

  Future<void> logout();
}
