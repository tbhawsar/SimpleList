import 'package:flutter/material.dart';
import 'package:simple_list/data/models/list_data.dart';

class ListWidget extends StatelessWidget {
  final ListData listData;
  final VoidCallback? onTap;
  
  const ListWidget({
    required this.listData,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(listData.title),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
          listData.category,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
              ),
            ),
          ],
        ),
        subtitle: Text(listData.subtitle),
        onTap: onTap,
      ),
    );
  }
}
