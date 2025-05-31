import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_list/data/classes/superceded/activity_class.dart';
import 'package:simple_list/views/widget_tree.dart';
import 'dart:convert' as convert;
import 'package:simple_list/views/widgets/superceded/hero_widget.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
          convert.jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load activity');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot snapshot) {
            Widget widget;
            if (snapshot.connectionState == ConnectionState.waiting) {
              widget = Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              Activity activity = snapshot.data;
              widget = Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HeroWidget(
                        title: activity.activity,
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
              );
            } else {
              widget = Center(child: Text('Error'));
            }
            return widget;
          },
        ));
  }
}
