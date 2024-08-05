import 'package:flutter/material.dart';
import 'package:invest_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:invest_app/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignUpFormState();
}

final formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _SignUpFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            label: "Email address",
          ),
          SizedBox(
            height: 18,
          ),
          CustomTextField(
            label: "Password",
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            title: "Sign in",
          ),
        ],
      ),
    );
  }
}
