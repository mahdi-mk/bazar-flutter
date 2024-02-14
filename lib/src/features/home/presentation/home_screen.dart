import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/home/presentation/home_screen_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(115),
        child: HomeScreenAppBar(),
      ),
      body: Container(),
    );
  }
}
