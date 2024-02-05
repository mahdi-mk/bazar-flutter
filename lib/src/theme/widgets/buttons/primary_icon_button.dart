import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';

class PrimaryIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const PrimaryIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        icon,
        size: 32,
        color: ThemeColors.primaryText,
      ),
    );
  }
}
