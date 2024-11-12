import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_ui/screens/home_screen.dart';
import 'package:hidden_drawer_ui/screens/login.dart';
import 'package:hidden_drawer_ui/screens/settings.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          baseStyle: myTextStyle,
          name: 'Home Screen',
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          baseStyle: myTextStyle,
          name: 'Settings',
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const Settings(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          baseStyle: myTextStyle,
          name: 'Login',
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const Login(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade300,
      initPositionSelected: 0,
      slidePercent: 60,
    );
  }
}
