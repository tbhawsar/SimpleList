import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Settings Page', style: TextStyle(fontSize: 30)),
          ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, isDarkMode, child) {
              return FloatingActionButton(
                onPressed: () {
                  isDarkModeNotifier.value = !isDarkMode;
                },
                child: isDarkMode
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.dark_mode),
              );
            },
          ),
          ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
            return Text(isDarkMode ? 'Dark Mode Enabled' : 'Dark Mode Disabled');
          },)
        ],
      ),
    );
  }
}
