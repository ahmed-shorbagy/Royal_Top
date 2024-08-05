import 'package:go_router/go_router.dart';
import 'package:invest_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:invest_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:invest_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kInitialView = '/';
  static const String kSignUpView = '/signup';
  static const String kSignInView = '/signin';
  static final router = GoRouter(routes: [
    GoRoute(
        path: kInitialView, builder: (context, state) => const SplashView()),
    GoRoute(path: kSignUpView, builder: (context, state) => const SingUpView()),
    GoRoute(path: kSignInView, builder: (context, state) => const SignInView()),
  ]);
}
