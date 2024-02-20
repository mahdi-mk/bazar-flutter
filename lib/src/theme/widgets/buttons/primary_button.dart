import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isLarge = false,
  });

  final String text;
  final void Function()? onPressed;
  final bool isLoading;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: ThemeColors.primary,
        padding: EdgeInsets.symmetric(
          vertical: isLarge ? 15 : 13,
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
          : SizedBox(
              width: double.infinity,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.sora(
                  color: ThemeColors.primaryText,
                  fontWeight: FontWeight.w600,
                  fontSize: isLarge ? 17 : 15,
                ),
              ),
            ),
    );
  }
}
