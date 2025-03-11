import 'package:flutter/material.dart';
import 'package:simple_list/views/widget_tree.dart';
import 'package:simple_list/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '123');
  TextEditingController pwController = TextEditingController(text: '456');

  @override
  void dispose() {
    emailController.dispose();
    pwController.dispose();
    super.dispose();
  }

  String confirmedEmail = '123';
  String confirmedPw = '456';

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
                HeroWidget(
                  title: widget.title,
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: pwController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    child: Text(widget.title),
                    onPressed: () {
                      onLoginPressed();
                    },
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

  void onLoginPressed() {
    if (confirmedEmail == emailController.text &&
        confirmedPw == pwController.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
          return WidgetTree();
        }),
      );
    }
  }

}
