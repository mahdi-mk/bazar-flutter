import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryTextInput extends StatelessWidget {
  final String hint;
  final Widget? preifxIcon;
  final Color? prefixIconColor;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool isDisabled;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const SecondaryTextInput({
    super.key,
    this.hint = '',
    this.preifxIcon,
    this.prefixIconColor,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.none,
    this.isDisabled = false,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      controller: controller,
      style: GoogleFonts.sora(
        color: ThemeColors.primaryText,
      ),
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: preifxIcon,
        prefixIconColor: prefixIconColor,
        filled: true,
        fillColor: ThemeColors.secondary.withOpacity(0.2),
        enabled: !isDisabled,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
        hintStyle: GoogleFonts.sora(
          color: ThemeColors.secondaryText,
          fontSize: 16,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
