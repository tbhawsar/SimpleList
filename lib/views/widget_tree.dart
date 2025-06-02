import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/views/pages/categories_page.dart';
import 'package:simple_list/views/pages/list_page.dart';
import 'package:simple_list/views/widgets/create_list_widget.dart';
import 'package:simple_list/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  ListPage(),
  CategoriesPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleList'),
        actions: [],
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showCreateList(context); // Change to dynamic page based on context
        },
        tooltip:
            'Add New List', //need to change to be dynamic with list or category options
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  _showCreateList(BuildContext context) {
    return showDialog(builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('Create New List'),
        children: [
          CreateListWidget(), // The widget to show in the bottom sheet
        ],
      );
    }, context: context);
  }
}
