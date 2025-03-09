import 'package:flutter/material.dart';

class MiniSettingsPage extends StatefulWidget {
  const MiniSettingsPage({
    super.key,
    required this.title,
  });

  @override
  State<MiniSettingsPage> createState() => _MiniSettingsPageState();
  final String title;
}

class _MiniSettingsPageState extends State<MiniSettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(125, 255, 255, 255)),
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                Text(controller.text, style: TextStyle(color: Colors.white)),
                Checkbox(
                  value: isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Tick Me'),
                  value: isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  tristate: true,
                  title: Text('I\'m a tristate checkbox'),
                  value: isChecked3,
                  onChanged: (value) {
                    setState(() {
                      isChecked3 = value;
                    });
                  },
                ),
                Switch.adaptive(
                  value: isSwitched1,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched1 = value;
                    });
                  },
                ),
                SwitchListTile.adaptive(
                  title: Text('Switch Me'),
                  subtitle: Text('I\'m a switch'),
                  value: isSwitched2,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched2 = value;
                    });
                  },
                ),
                Slider.adaptive(
                  max: 10,
                  min: 0,
                  divisions: 10,
                  value: sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                      print(value);
                    });
                  },
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.white10,
                    onTap: () => print('image selected'),
                    child: Container(
                      height: 20,
                      width: double.infinity,
                      color: Colors.white12,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    child: Text('Click Me')),
                ElevatedButton(onPressed: () {}, child: Text('Click Me')),
                FilledButton(onPressed: () {}, child: Text('Click Me')),
                TextButton(onPressed: () {}, child: Text('Click Me')),
                OutlinedButton(onPressed: () {}, child: Text('Click Me')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CloseButton(
                      onPressed: () {
                      },
                    ),
                    BackButton(
                      onPressed: () {},
                    ),
                  ],
                ),
                DropdownButton(
                  value: menuItem,
                  items: [
                    DropdownMenuItem(
                      child: Text('Item 1'),
                      value: '1',
                    ),
                    DropdownMenuItem(
                      child: Text('Item 2'),
                      value: '2',
                    ),
                    DropdownMenuItem(
                      child: Text('Item 3'),
                      value: '3',
                    ),
                  ], 
                  onChanged: (String? value) {
                    setState(() {
                      menuItem = value;
                    });
                  },
                  ),
              ],
            ),
          ),
      ),
    );
  }
}
