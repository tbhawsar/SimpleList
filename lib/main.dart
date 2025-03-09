import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/views/pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          title: 'SimpleList',
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.black, // Set background color
              selectedItemColor: Colors.white, // Active item color
              unselectedItemColor: Colors.grey, // Inactive item color
              type: BottomNavigationBarType
                  .fixed, // Ensures consistent styling (important)
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: WelcomePage(),
        );
      },
    );
  }
}
