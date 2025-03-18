import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_list/data/constants.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/views/pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initDarkMode();
    super.initState();
  }

  void initDarkMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat  = prefs.getBool(KConstants.darkModeKey);
    isDarkModeNotifier.value = repeat ?? false;
  }

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
