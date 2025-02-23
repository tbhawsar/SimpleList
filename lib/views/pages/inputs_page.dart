import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({super.key});

  @override
  State<InputsPage> createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: double.infinity,
      width: double.infinity,
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
                hintStyle:
                    TextStyle(color: const Color.fromARGB(125, 255, 255, 255)),
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
          ],
        ),
      ),
    );
  }
}
