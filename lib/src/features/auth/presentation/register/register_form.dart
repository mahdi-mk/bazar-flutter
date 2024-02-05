import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/form/primary_text_input.dart';
import 'package:form_validator/form_validator.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // TODO: implement the registration process.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          PrimaryTextInput(
            label: "Name",
            textInputAction: TextInputAction.next,
            validator: ValidationBuilder().maxLength(255).build(),
            controller: _nameController,
          ),
          gapH20,
          PrimaryTextInput(
            label: "Email address",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: ValidationBuilder().email().maxLength(50).build(),
            controller: _emailController,
          ),
          gapH20,
          PrimaryTextInput(
            label: "Password",
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            validator: ValidationBuilder().minLength(8).maxLength(50).build(),
            controller: _passwordController,
          ),
          gapH20,
          PrimaryTextInput(
            label: "Confirm password",
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            validator: ValidationBuilder().minLength(8).maxLength(50).build(),
          ),
          gapH52,
          SizedBox(
            width: double.infinity,
            child: PrimaryButton(text: "Sign Up", onPressed: () => _submit()),
          ),
        ],
      ),
    );
  }
}
