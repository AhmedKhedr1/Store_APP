import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Login/Presentation/Views/SignInView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SignupView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SplashView.dart';

abstract class Approuter {
  static const KSigninView = '/Signinview';
  static const KSignupView = '/Signupview';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Splashview();
      },
    ),
    GoRoute(
      path: KSigninView,
      builder: (context, state) {
        return Signinview();
      },
    ),
    GoRoute(
      path: KSignupView,
      builder: (context, state) {
        return Signupview();
      },
    )
  ]);
}
