import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';

class PrimaryLoadingIndicator extends StatelessWidget {
  const PrimaryLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: ThemeColors.primary,
    );
  }
}
