import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.input_outlined),
              activeIcon: Icon(Icons.input),
              label: 'Inputs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.switch_account_outlined),
              activeIcon: Icon(Icons.switch_account),
              label: 'Transitions',
            ),
          ],
          onTap: (int value) {
            selectedPageNotifier.value = value;
          },
          currentIndex: selectedPage,
        );
      },
    );
  }
}
