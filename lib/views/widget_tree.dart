import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/views/pages/home_page.dart';
import 'package:simple_list/views/pages/inputs_page.dart';
import 'package:simple_list/views/pages/settings_page.dart';
import 'package:simple_list/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  SettingsPage(),
  InputsPage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleList'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
