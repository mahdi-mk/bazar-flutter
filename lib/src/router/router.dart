import 'package:flutter_app/src/features/auth/presentation/get_started_screen.dart';
import 'package:flutter_app/src/features/auth/presentation/login/login_screen.dart';
import 'package:flutter_app/src/features/auth/presentation/register/register_screen.dart';
import 'package:flutter_app/src/features/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  getStarted,
  login,
  register,
}

final router = GoRouter(
  initialLocation: '/auth',
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
      path: '/auth',
      name: AppRoute.getStarted.name,
      builder: (context, state) => const GetStartedScreen(),
      routes: [
        GoRoute(
          path: 'login',
          name: AppRoute.login.name,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: 'register',
          name: AppRoute.register.name,
          builder: (context, state) => const RegisterScreen(),
        ),
      ],
    )
  ],
);
