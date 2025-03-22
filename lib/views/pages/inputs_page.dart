import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_list/views/pages/expanded_flexible_page.dart';

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
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    double btnMinFontSize = 10;
    return Container(
      color: Colors.deepPurple,
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(seconds: 5),
                            content: Text('Hello, ${controller.text}'),
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                controller.clear();
                              },
                            ),
                          ),
                        );
                      },
                      child: AutoSizeText(
                        'Open SnackBar',
                        maxLines: 1,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 2.0,
                      width: 15,
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AboutDialog();
                            });
                      },
                      child: AutoSizeText(
                        'Open About',
                        maxLines: 1,
                        minFontSize: btnMinFontSize,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 2.0,
                      width: 15,
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Alert!'),
                                content: Text('Hello'),
                                actions: [
                                  FilledButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            });
                      },
                      child: AutoSizeText(
                        'Open Alert',
                        maxLines: 1,
                        minFontSize: btnMinFontSize,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
                thickness: 5.0,
                indent: 50.0,
                endIndent: 50.0,
                height: 50,
              ),
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
                    //print(value);
                  });
                },
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white10,
                  //onTap: () => print('image selected'),
                  child: Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.white12,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ExpandedFlexiblePage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: Text('Click Me to Open Flex Page')),
              ElevatedButton(onPressed: () {}, child: Text('Click Me')),
              FilledButton(onPressed: () {}, child: Text('Click Me')),
              TextButton(onPressed: () {}, child: Text('Click Me')),
              OutlinedButton(onPressed: () {}, child: Text('Click Me')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CloseButton(
                    onPressed: () {},
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
                    value: '1',
                    child: Text('Item 1'),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text('Item 2'),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child: Text('Item 3'),
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
