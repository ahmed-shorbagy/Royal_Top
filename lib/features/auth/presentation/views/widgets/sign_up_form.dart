import 'package:flutter/material.dart';
import 'package:invest_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:invest_app/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

final formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            label: "full name",
          ),
          SizedBox(
            height: 18,
          ),
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
            title: "Create account",
          ),
        ],
      ),
    );
  }
}
