import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';
import 'package:simple_list/views/widgets/list_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: myLists.map(
            (listItem) {
              return ListWidget(
                listData: listItem,
                onTap: () {
                  // Navigate to list detail page (to be implemented)
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
