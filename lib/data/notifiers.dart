import 'package:flutter/material.dart';
import 'package:simple_list/data/models/list_data.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);

// Example list data - will later be replaced with dynamic data
final List<ListData> myLists = [
  ListData(id: '1', title: 'Groceries', subtitle: 'Milk, Bread, Eggs', category: 'Shopping', items: ['Milk', 'Bread', 'Eggs']),
  ListData(id: '2', title: 'Work Tasks', subtitle: 'Finish report, Email client', category: 'Work', items: ['Finish report', 'Email client']),
  ListData(id: '3', title: 'Travel Packing', subtitle: 'Passport, Clothes, Charger', category: 'Travel', items: ['Passport', 'Clothes', 'Charger']),
  ListData(id: '4', title: 'Books to Read', subtitle: '1984, Sapiens, Atomic Habits', category: 'Reading', items: ['1984', 'Sapiens', 'Atomic Habits']),
];