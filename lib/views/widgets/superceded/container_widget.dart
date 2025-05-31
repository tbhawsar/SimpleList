import 'package:flutter/material.dart';
import 'package:simple_list/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
    });

    final String title;
    final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 5.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: KTextStyle.titleTealText,
              ),
              Text(
                description,
                style: KTextStyle.descTealText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
