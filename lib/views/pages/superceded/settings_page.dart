import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_list/data/constants.dart';
import 'package:simple_list/data/notifiers.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDarkMode, child) {
          return Container(
            color:
                isDarkMode ? const Color.fromARGB(255, 29, 7, 6) : Colors.red,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Settings Page', style: TextStyle(fontSize: 30)),
                FloatingActionButton(
                  onPressed: () async {
                    isDarkModeNotifier.value = !isDarkMode;
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setBool(
                        KConstants.darkModeKey, isDarkModeNotifier.value
                        );
                  },
                  child: isDarkMode
                      ? Icon(Icons.light_mode)
                      : Icon(Icons.dark_mode),
                ),
                Text(isDarkMode ? 'Dark Mode Enabled' : 'Dark Mode Disabled'),
              ],
            ),
          );
        });
  }
}
