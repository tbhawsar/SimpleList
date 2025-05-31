import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);

// Example list data - will later be replaced with dynamic data
final List<Map<String, String>> myLists = [
  {'title': 'Groceries', 'subtitle': 'Milk, Bread, Eggs'},
  {'title': 'Work Tasks', 'subtitle': 'Finish report, Email client'},
  {'title': 'Travel Packing', 'subtitle': 'Passport, Clothes, Charger'},
  {'title': 'Books to Read', 'subtitle': '1984, Sapiens, Atomic Habits'},
];