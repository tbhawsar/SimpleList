import 'package:flutter/material.dart';
import 'package:simple_list/data/notifiers.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: myLists.map((listItem) {
              return Card(
                elevation: 1.0,
                margin: const EdgeInsets.only(bottom: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 100.0,
                  child: ListTile(
                    title: Text(listItem['title'] ?? ''),
                    subtitle: Text(listItem['subtitle'] ?? ''),
                    onTap: () {
                      // Navigate to list detail page (to be implemented)
                    },
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
