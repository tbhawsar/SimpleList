import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/data/constants.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return BottomAppBar(
          height: KNavbarSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(10.0),
                child: SizedBox(
                  width: KNavbarBtnSize.smallButtonSize,
                  height: KNavbarBtnSize.smallButtonSize,
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
                  width: KNavbarBtnSize.smallButtonSize,
                  height: KNavbarBtnSize.smallButtonSize,
                  child: Icon(Icons.folder_outlined)
                  ),
                onTap: () {
                  selectedPageNotifier.value = 1;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
