import 'package:flutter/material.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/secondary_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ThemeColors.alternate,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              text: 'Bazar',
              style: GoogleFonts.sora(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: '.',
                  style: GoogleFonts.sora(
                    color: ThemeColors.primary,
                    fontSize: 36 * 2,
                  ),
                ),
              ]),
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's \nget started",
              style: GoogleFonts.sora(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            gapH20,
            Text(
              "Everything start from here.",
              style: GoogleFonts.sora(
                fontSize: 16,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            gapH52,
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                text: "Sign In",
                onPressed: () => context.goNamed(AppRoute.login.name),
              ),
            ),
            gapH12,
            SizedBox(
              width: double.infinity,
              child: SecondaryButton(
                text: "Sign Up",
                onPressed: () => context.goNamed(AppRoute.register.name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
