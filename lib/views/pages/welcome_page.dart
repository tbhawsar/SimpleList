import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_list/views/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/loading_icon.json',
                height: 200.0,),
                FittedBox(
                  child: Text(
                    'Simple List',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10.0,
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(
                          title: 'Login',
                          );
                        },
                    ),
                  );
                  },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                child: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(
                          title: 'Register',
                          );
                        },
                    ),
                  );
                  },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                child: Text('Register'),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
