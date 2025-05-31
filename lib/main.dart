import 'package:flutter/material.dart';
import 'package:simple_list/views/widget_tree.dart';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'SimpleList',
          theme: ThemeData(
            primarySwatch: Colors.red,
            // brightness: isDarkMode ? Brightness.dark : Brightness.light,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.black, // Set background color
              selectedItemColor: Colors.white, // Active item color
              unselectedItemColor: Colors.grey, // Inactive item color
              type: BottomNavigationBarType
                  .fixed, // Ensures consistent styling (important)
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: WidgetTree(),
        );
  }
}
