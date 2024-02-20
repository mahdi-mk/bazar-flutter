import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';

class SecondaryActionButton extends StatelessWidget {
  const SecondaryActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: ThemeColors.primaryText,
        size: 26,
      ),
      style: IconButton.styleFrom(
        backgroundColor: ThemeColors.secondary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
