import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Login/Presentation/Views/SplashView.dart';

abstract class Approuter {
static final GoRouter router = GoRouter(
    routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Splashview();
      },
    ),
  ]);
}
