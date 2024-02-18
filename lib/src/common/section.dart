import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:google_fonts/google_fonts.dart';

enum SectionType {
  categories,
  brands,
  products,
}

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.type,
    required this.heading,
    required this.itemCount,
    required this.itemBuilder,
  });

  final SectionType type;
  final String heading;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: type == SectionType.products ? 300 : 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading,
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ThemeColors.primaryText,
                  ),
                ),
                PrimaryTextButton(text: 'View all', onPressed: () {})
              ],
            ),
          ),
          gapH12,
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemCount,
              itemBuilder: itemBuilder,
            ),
          )
        ],
      ),
    );
  }
}
