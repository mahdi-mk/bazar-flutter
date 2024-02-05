import 'package:flutter/material.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/settings/typography.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:flutter_app/src/theme/widgets/form/primary_text_input.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ThemeColors.primaryText,
            size: 28,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back",
                style: heading,
              ),
              gapH12,
              Text(
                "Enter your credentials to continue",
                style: subheading,
              ),
              gapH52,
              const PrimaryTextInput(
                label: "Email Address",
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              gapH20,
              const PrimaryTextInput(
                label: "Password",
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                isPassword: true,
              ),
              gapH12,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryTextButton(text: "Forgot password?", onPressed: () {}),
                ],
              ),
              gapH52,
              SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  text: "Sign In",
                  onPressed: () {},
                ),
              ),
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
