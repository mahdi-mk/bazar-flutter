import 'package:flutter/material.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/settings/typography.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:flutter_app/src/theme/widgets/form/primary_text_input.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                "Create account",
                style: heading,
              ),
              gapH12,
              Text(
                "Sign up to get started!",
                style: subheading,
              ),
              gapH52,
              const PrimaryTextInput(
                label: "Name",
                textInputAction: TextInputAction.next,
              ),
              gapH20,
              const PrimaryTextInput(
                label: "Email address",
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              gapH20,
              const PrimaryTextInput(
                label: "Password",
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
              ),
              gapH20,
              const PrimaryTextInput(
                label: "Confirm password",
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
              gapH52,
              SizedBox(
                width: double.infinity,
                child: PrimaryButton(text: "Sign Up", onPressed: () {}),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: body,
                    ),
                    PrimaryTextButton(
                      text: "Sign In",
                      onPressed: () => context.goNamed(AppRoute.login.name),
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
