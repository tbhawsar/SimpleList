import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/views/widget_tree.dart';

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
              primarySwatch: Colors.blue,
              brightness: isDarkMode ? Brightness.dark : Brightness.light),
          home: WidgetTree(),
        );
      },
    );
  }
}
