import 'package:flutter/material.dart';
import 'package:invest_app/features/auth/presentation/views/widgets/sign_up_form.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          autovalidateMode = AutovalidateMode.always;
        } else {
          autovalidateMode = AutovalidateMode.onUserInteraction;
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        backgroundColor: const Color(0xff31A062),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
