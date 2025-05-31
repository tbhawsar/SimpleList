import 'package:flutter/material.dart';

class TransitionsPage extends StatefulWidget {
  const TransitionsPage({super.key});

  @override
  State<TransitionsPage> createState() => _TransitionsPageState();
}

class _TransitionsPageState extends State<TransitionsPage> {
  bool showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FloatingActionButton(onPressed: 
          (){
            setState(() {
              showFirst = !showFirst;
            });
          }),
          AnimatedCrossFade(
            firstChild: Image.asset('assets/images/background.jpeg'),
            secondChild: Image.asset('assets/images/background2.jpg'),
            crossFadeState: showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 500)),
            ]
    );
  }
}
