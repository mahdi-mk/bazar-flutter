import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/auth/presentation/register/register_form_controller.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/form/primary_text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validator/form_validator.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends ConsumerStatefulWidget {
  const RegisterForm({super.key});

  @override
  ConsumerState<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends ConsumerState<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get name => _nameController.text;
  String get email => _emailController.text;
  String get password => _passwordController.text;

  Future<bool> _submit() async {
    if (!_formKey.currentState!.validate()) {
      return false;
    }

    final controller = ref.read(registerFormControllerProvider.notifier);
    final success = await controller.register(name, email, password);

    return success;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registerFormControllerProvider);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          PrimaryTextInput(
            label: "Name",
            textInputAction: TextInputAction.next,
            validator: ValidationBuilder().maxLength(255).build(),
            controller: _nameController,
            isDisabled: state.isLoading,
          ),
          gapH20,
          PrimaryTextInput(
            label: "Email address",
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
            textInputAction: TextInputAction.next,
            isPassword: true,
            validator: ValidationBuilder().minLength(8).maxLength(50).build(),
            controller: _passwordController,
            isDisabled: state.isLoading,
          ),
          gapH20,
          PrimaryTextInput(
            label: "Confirm password",
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            isPassword: true,
            validator: ValidationBuilder().minLength(8).maxLength(50).build(),
            isDisabled: state.isLoading,
          ),
          gapH52,
          SizedBox(
            width: double.infinity,
            child: PrimaryButton(
              text: "Sign Up",
              isLoading: state.isLoading,
              onPressed: () async {
                final success = await _submit();

                if (context.mounted && success) {
                  context.goNamed(AppRoute.home.name);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
