import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: ThemeColors.primary,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        disabledBackgroundColor: ThemeColors.primary.withOpacity(0.5),
      ),
      child: isLoading
          ? CircularProgressIndicator(
              color: ThemeColors.primaryText,
            )
          : Text(
              text,
              style: GoogleFonts.sora(
                color: ThemeColors.primaryText,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
    );
  }
}
