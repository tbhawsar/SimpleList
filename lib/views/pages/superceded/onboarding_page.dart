import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_list/data/constants.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/welcome_icon.json'),
                SizedBox(height: 20.0),
                Text('hELLo ThErE',
                style: KTextStyle.descTealText,),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity, 
                  child: FilledButton(
                    child: Text('Next'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 200.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}