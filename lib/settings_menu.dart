import 'package:flutter/material.dart';
import 'package:newappidea/change_theme_button_widget.dart';

class SettingsMenu extends StatelessWidget {
  SettingsMenu({Key? key}) : super(key: key);
  final List<String> menuOptions = [
    "Option 1",
    "Option 2",
    "Option 3",
    "Theme",
    "Option 5"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Settings"),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.help,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("Help Clicked!");
                })
          ],
        ),
        body: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: ListView.builder(
              itemCount: menuOptions.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      if (menuOptions[index].toString() == "Theme") {
                        print('Theme');
                      }
                    },
                    title: Text(menuOptions[index].toString()),
                    leading: Icon(Icons.settings),
                  ),
                );
              },
            )),
      ),
    );
  }
}
