import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/auth/data/fake_auth_repository.dart';
import 'package:flutter_app/src/features/home/presentation/home_screen_controller.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenControllerProvider);
    final authUser = ref.watch(authStateChangesProvider).value;

    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Text(authUser?.email ?? ''),
            gapH12,
            ElevatedButton(
              onPressed: state.isLoading
                  ? null
                  : () async {
                      final success = await ref
                          .read(homeScreenControllerProvider.notifier)
                          .logout();

                      if (context.mounted && success) {
                        context.goNamed(AppRoute.getStarted.name);
                      }
                    },
              child: state.isLoading
                  ? const CircularProgressIndicator()
                  : const Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
