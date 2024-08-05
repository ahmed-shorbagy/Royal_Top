import 'package:flutter/material.dart';
import 'package:invest_app/core/utils/app_router.dart';

void main() {
  runApp(const RoyalTop());
}
class RoyalTop extends StatelessWidget {
  const RoyalTop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,

    );
  }
}