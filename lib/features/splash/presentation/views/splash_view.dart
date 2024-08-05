import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invest_app/core/utils/app_images.dart';
import 'package:invest_app/core/utils/app_router.dart';
import 'package:invest_app/features/splash/presentation/views/widgets/animated_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

late AnimationController animationController;
late Animation<Offset> slidingAnimation;

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  initSlidingText() async {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
            .animate(animationController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              GoRouter.of(context).pushReplacement(AppRouter.kSignUpView);
            }
          });
    animationController.forward();
  }

  @override
  void initState() {
    initSlidingText();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.imagesLogoColor,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const AnimatedText()
        ],
      ),
    );
  }
}
