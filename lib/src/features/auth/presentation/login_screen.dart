import 'package:flutter/material.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/text.dart';
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
      appBar: null,
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
                style: TextStyles.heading,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Enter your credentials to continue",
                style: TextStyles.subheading,
              ),
              const SizedBox(
                height: 50,
              ),
              const PrimaryTextInput(
                label: "Email Address",
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              const PrimaryTextInput(
                label: "Password",
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                isPassword: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryTextButton(text: "Forgot password?", onPressed: () {}),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
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
                      style: TextStyles.body,
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
