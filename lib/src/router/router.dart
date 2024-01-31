import 'package:flutter_app/src/features/auth/views/intro_screen.dart';
import 'package:flutter_app/src/features/home/views/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
}

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const IntroScreen(),
    ),
  ],
);
