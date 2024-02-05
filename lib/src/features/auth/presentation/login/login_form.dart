import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:flutter_app/src/theme/widgets/form/primary_text_input.dart';
import 'package:form_validator/form_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryTextInput(
              label: "Email Address",
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: ValidationBuilder().email().maxLength(50).build(),
            ),
            gapH20,
            PrimaryTextInput(
              label: "Password",
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              isPassword: true,
              validator: ValidationBuilder().minLength(8).maxLength(50).build(),
            ),
            gapH8,
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
                onPressed: () => _submit(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
