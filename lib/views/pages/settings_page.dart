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
            valueListenable: isDarkMode,
            builder: (context, darkMode, child) {
              return FloatingActionButton(
                onPressed: () {
                  isDarkMode.value = !darkMode;
                },
                child: darkMode
                    ? Icon(Icons.lightbulb_outline)
                    : Icon(Icons.lightbulb),
              );
            },
          ),
          ValueListenableBuilder(valueListenable: isDarkMode, builder: (context, darkMode, child) {
            return Text(darkMode ? 'Dark Mode Enabled' : 'Dark Mode Disabled');
          },)
        ],
      ),
    );
  }
}
