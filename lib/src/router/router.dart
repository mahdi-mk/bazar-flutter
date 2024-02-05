import 'package:flutter_app/src/features/auth/presentation/loging_screen.dart';
import 'package:flutter_app/src/features/home/views/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  login,
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
      path: '/auth',
      redirect: (context, state) => '/auth/login',
      routes: [
        GoRoute(
          path: 'login',
          name: AppRoute.login.name,
          builder: (context, state) => const LoginScreen(),
        )
      ],
    ),
  ],
);
