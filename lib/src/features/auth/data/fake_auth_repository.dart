import 'dart:math';

import 'package:flutter_app/src/features/auth/data/auth_repository.dart';
import 'package:flutter_app/src/features/auth/domain/user.dart';
import 'package:flutter_app/src/utils/in_memory_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakeAuthRepository implements AuthRepository {
  final _authState = InMemoryStore<User?>(null);

  @override
  Stream<User?> authStateChanges() {
    return _authState.stream;
  }

  @override
  User? get authUser => _authState.value;

  @override
  Future<void> login(String email, String password) async {
    if (authUser == null) {
      final id = Random.secure().toString();
      _authState.value = User(id: id, name: email, email: email);
    }
  }

  @override
  Future<void> register(String name, String email, String password) async {
    if (authUser == null) {
      final id = Random.secure().toString();
      _authState.value = User(id: id, name: email, email: email);
    }
  }

  @override
  Future<void> logout() async {
    _authState.value = null;
  }

  void dispose() => _authState.close();
}

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    final auth = FakeAuthRepository();

    ref.onDispose(() {
      auth.dispose();
    });

    return auth;
  },
);

final authStateChangesProvider = StreamProvider.autoDispose<User?>(
  (ref) {
    return ref.watch(authRepositoryProvider).authStateChanges();
  },
);
