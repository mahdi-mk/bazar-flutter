import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextInput extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool isPassword;
  final bool isDisabled;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const PrimaryTextInput({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.none,
    this.isPassword = false,
    this.isDisabled = false,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: isPassword,
      validator: validator,
      controller: controller,
      style: GoogleFonts.sora(
        color: ThemeColors.primaryText,
      ),
      decoration: InputDecoration(
        enabled: !isDisabled,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 17,
        ),
        labelText: label,
        labelStyle: GoogleFonts.sora(
          color: ThemeColors.secondaryText,
          fontSize: 16,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ThemeColors.secondaryText.withOpacity(0.2),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ThemeColors.secondaryText.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ThemeColors.danger.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ThemeColors.danger.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ThemeColors.secondaryText.withOpacity(0.5),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
