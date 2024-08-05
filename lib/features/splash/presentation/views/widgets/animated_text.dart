import 'package:flutter/material.dart';
import 'package:invest_app/features/splash/presentation/views/splash_view.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Invest with Confidence',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}
