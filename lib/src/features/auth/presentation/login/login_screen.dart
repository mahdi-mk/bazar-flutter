import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/auth/presentation/login/login_form.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/settings/typography.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_icon_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryIconButton(
                onPressed: () => context.goNamed(AppRoute.getStarted.name),
                icon: Icons.arrow_back,
              ),
              gapH40,
              Text(
                "Welcome back",
                style: heading,
              ),
              gapH8,
              Text(
                "Enter your credentials to continue",
                style: subheading,
              ),
              gapH40,
              const LoginForm(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: body,
                    ),
                    PrimaryTextButton(
                      text: "Sign Up",
                      onPressed: () => context.goNamed(AppRoute.register.name),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
