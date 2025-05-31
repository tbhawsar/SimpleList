import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(          
          height: screenHeight,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      child: Text(
                        'Expanded',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        'Flexible',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'Expanded',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Flexible',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Flexible',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          'Expanded',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      'Expanded',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Flexible',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      'Flexible',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
