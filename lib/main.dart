import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal, brightness: Brightness.dark)),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
            drawer: Drawer(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Home'),
                    onTap: () => print('Home pressed'),
                  ),
                  ListTile(
                    title: Text('About'),
                    onTap: () => print('About pressed'),
                  ),
                  ListTile(
                    title: Text('Contact'),
                    onTap: () => print('Contact pressed'),
                  ),
                ],
              ),
            ),
          bottomNavigationBar:
              BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      label: 'Business',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.school),
                      label: 'School',
                    ),
                  ],
                  onTap: (value) => print('button $value pressed'),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => print('Floating Action Button pressed'),
                  child: Icon(Icons.add),
                ),
          body: Center(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
