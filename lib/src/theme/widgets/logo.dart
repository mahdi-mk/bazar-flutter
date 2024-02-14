import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.textColor = Colors.white,
    this.size = 36,
  });

  final Color textColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'Bazar',
          style: GoogleFonts.sora(
            fontSize: size,
            fontWeight: FontWeight.bold,
            color: textColor,
            height: 0.7,
          ),
          children: [
            TextSpan(
              text: '.',
              style: GoogleFonts.sora(
                color: ThemeColors.primary,
                fontSize: size * 2,
              ),
            ),
          ]),
    );
  }
}
