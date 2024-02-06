import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/auth/presentation/login/login_form_controller.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:flutter_app/src/theme/widgets/form/primary_text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validator/form_validator.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text;
  String get password => _passwordController.text;

  Future<bool> _submit() async {
    if (!_formKey.currentState!.validate()) {
      return false;
    }

    final controller = ref.read(loginFormControllerProvider.notifier);
    final success = await controller.login(email, password);

    return success;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginFormControllerProvider);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          PrimaryTextInput(
            label: "Email Address",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: ValidationBuilder().email().maxLength(50).build(),
            controller: _emailController,
            isDisabled: state.isLoading,
          ),
          gapH20,
          PrimaryTextInput(
            label: "Password",
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            isPassword: true,
            validator: ValidationBuilder().minLength(8).maxLength(50).build(),
            controller: _passwordController,
            isDisabled: state.isLoading,
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
              onPressed: () async {
                final success = await _submit();

                if (context.mounted && success) {
                  context.goNamed(AppRoute.home.name);
                }
              },
              isLoading: state.isLoading,
            ),
          ),
        ],
      ),
    );
  }
}
