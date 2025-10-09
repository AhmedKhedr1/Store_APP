import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/HomeView.dart';
import 'package:store_app/Features/Profile/Presentation/View/ProfileView.dart';
import 'package:store_app/core/utils/Assets.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Homeview(),
    Homeview(),
    Homeview(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.UnActiveHome,
                height: 28,
              ),
              activeIcon: Image.asset(
                Assets.ActiveHome,
                height: 28,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.UnActiveNotification,
                height: 28,
              ),
              activeIcon: Image.asset(
                Assets.ActiveNotification,
                height: 28,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.UnActiveCart,
                height: 28,
              ),
              activeIcon: Image.asset(
                Assets.ActiveCart,
                height: 28,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.UnActiveProfile,
                height: 28,
              ),
              activeIcon: Image.asset(
                Assets.ActiveProfile,
                height: 28,
              ),
              label: '',
            ),
          ]),
    );
  }
}
