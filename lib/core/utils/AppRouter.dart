// ignore_for_file: constant_identifier_names

import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Cart_View.dart';
import 'package:store_app/Features/Home/Presentation/Views/CategoriesView.dart';
import 'package:store_app/Features/Home/Presentation/Views/CategoryProductView.dart';
import 'package:store_app/Features/Home/Presentation/Views/HomeView.dart';
import 'package:store_app/Features/Home/Presentation/Views/Main_view.dart';
import 'package:store_app/Features/Home/Presentation/Views/ProductDetailsView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SignInView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SignupView.dart';
import 'package:store_app/Features/Login/Presentation/Views/SplashView.dart';
import 'package:store_app/Features/Notifications/Presentation/Views/Notifications_View.dart';
import 'package:store_app/Features/Orders/Presentation/Views/OrdersView.dart';
import 'package:store_app/Features/Profile/Presentation/View/ProfileView.dart';

abstract class Approuter {
  static const KSigninView = '/Signinview';
  static const KSignupView = '/Signupview';
  static const KHomeView = '/Homeview';
  static const KCategoriesView = '/Categoriesview';
  static const KSettingsView = '/Settingsview';
  static const KCategoryproductview = '/Categoryproductview';
  static const KProductdetailsview = '/Productdetailsview';
  static const KMainView = '/MainView';
  static const KCartView = '/CartView';
  static const KNotificationsView = '/Notificationsview';
  static const KOrdersView = '/Ordersview';

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
      path: KMainView,
      builder: (context, state) {
        return MainView();
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
        return ProfileView();
      },
    ),
    GoRoute(
      path: KCategoryproductview,
      builder: (context, state) {
        return Categoryproductview();
      },
    ),
    GoRoute(
      path: KProductdetailsview,
      builder: (context, state) {
        return Productdetailsview();
      },
    ),
    GoRoute(
      path: KCartView,
      builder: (context, state) {
        return CartView();
      },
    ),
    GoRoute(
      path: KNotificationsView,
      builder: (context, state) {
        return NotificationsView();
      },
    ),
     GoRoute(
      path: KOrdersView,
      builder: (context, state) {
        return Ordersview();
      },
    )
  ]);
}
