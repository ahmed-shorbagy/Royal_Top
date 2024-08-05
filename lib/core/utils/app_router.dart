import 'package:go_router/go_router.dart';
import 'package:invest_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kInitialView = '/';
  static final router = GoRouter(routes: [

    GoRoute(path: kInitialView, builder: (context, state) => const SplashView()),
  ]);
}
