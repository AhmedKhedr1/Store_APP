// ignore_for_file: constant_identifier_names

import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Home/Presentation/Views/CategoriesView.dart';
import 'package:store_app/Features/Home/Presentation/Views/HomeView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SignInView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SignupView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SplashView.dart';
import 'package:store_app/Features/Profile/Presentation/View/SettingsView.dart';

abstract class Approuter {
  static const KSigninView = '/Signinview';
  static const KSignupView = '/Signupview';
  static const KHomeView = '/Homeview';
  static const KCategoriesView = '/Categoriesview';
  static const KSettingsView = '/Settingsview';

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
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) {
        return Homeview();
      },
    ),
    GoRoute(
      path: KCategoriesView,
      builder: (context, state) {
        return Categoriesview();
      },
    ),
    GoRoute(
      path: KSettingsView,
      builder: (context, state) {
        return Settingsview();
      },
    )
  ]);
}
