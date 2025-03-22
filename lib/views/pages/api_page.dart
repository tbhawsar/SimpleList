import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_list/data/classes/activity_class.dart';
import 'package:simple_list/views/widget_tree.dart';
import 'dart:convert' as convert;
import 'package:simple_list/views/widgets/hero_widget.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  late Activity activity;
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      activity = Activity.fromJson(
          convert.jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(
                title: 'API Page',
              ),
              FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return WidgetTree();
                      }),
                    );
                  },
                  child: Text('Exit'))
            ],
          ),
        ),
      ),
    );
  }
}
