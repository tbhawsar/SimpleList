import 'package:flutter/material.dart';
import 'package:simple_list/views/widgets/hero_widget.dart';

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

  void getData() async {
    // Fetch data from API
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
            ],
          ),
        ),
      ),
    );
  }
}
