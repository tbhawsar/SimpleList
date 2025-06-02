import 'package:flutter/material.dart';

class CreateListWidget extends StatefulWidget {
  const CreateListWidget({super.key});

  @override
  State<CreateListWidget> createState() => _CreateListWidgetState();
}

class _CreateListWidgetState extends State<CreateListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // You can specify a height or let the content dictate it
      
      // color: Colors.white, // Optional: Set a background color if not using Material's default
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Make column only as tall as its children
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              labelText: 'List Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              labelText: 'List Category',
              hintText: 'e.g., Groceries, To-Do',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Dismiss the bottom sheet
                },
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  // Implement your logic to create the list here
                  print('Create List button pressed!');
                  Navigator.pop(context); // Dismiss after action
                },
                child: const Text('Create'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
