import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: SizedBox(
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(40.0),
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(Icons.list_outlined)
                    ),
                  onTap: () {
                    selectedPageNotifier.value = 0;
                  },
                ),
                SizedBox(width: 48.0),
                InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(Icons.folder_outlined)
                    ),
                  onTap: () {
                    selectedPageNotifier.value = 1;
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
