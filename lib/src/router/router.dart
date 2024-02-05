import 'package:flutter_app/src/features/auth/presentation/login_screen.dart';
import 'package:flutter_app/src/features/auth/presentation/register_screen.dart';
import 'package:flutter_app/src/features/home/views/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  login,
  register,
}

final router = GoRouter(
  initialLocation: '/auth/login',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),

    //-------------------------------------
    // Auth Routes
    //-------------------------------------

    GoRoute(
      path: '/auth/login',
      name: AppRoute.login.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/auth/register',
      name: AppRoute.register.name,
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
