import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invest_app/features/auth/presentation/views/widgets/sign_in_form.dart';

import '../../../../core/utils/app_router.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "Sign in to your account",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 80,
            ),
            const SignInForm(),
            const SizedBox(
              height: 44,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.kSignUpView);
              },
              child: Text(
                "Don't have an account? "
                "Sign up",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xff31A062),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
