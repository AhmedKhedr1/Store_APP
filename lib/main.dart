import 'package:flutter/material.dart';
import 'package:store_app/core/utils/AppRouter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Approuter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
