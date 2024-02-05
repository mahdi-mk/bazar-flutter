import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  /// Used for titles, headings, and other important text elements that need to stand out.
  static final heading = GoogleFonts.sora(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: ThemeColors.primaryText,
  );

  /// Similar to headings but with a smaller font size, suitable for subtitles or less important headings.
  static final subheading = GoogleFonts.sora(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: ThemeColors.secondaryText,
  );

  /// Used for general paragraph text and content throughout your app.
  static final body = GoogleFonts.sora(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ThemeColors.primaryText,
  );
}
