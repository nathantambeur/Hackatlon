import 'package:flutter/material.dart';

// importing material design library

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
// value set to false
  bool _value = false;

// App widget tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: SizedBox(
        width: 400,
        height: 400,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent),
                borderRadius: BorderRadius.circular(20),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: CheckboxListTile(
                //TODO
                // van deze checklist box tile eeen extrne wiget maken en hierin gewoon een Listview zetten die alle options als listtiles omzet
                title: const Text('Show parties'),
                subtitle: const Text('show TD\'s and fun promotions in events'),
                secondary: const Icon(Icons.no_drinks),
                autofocus: false,
                activeColor: Colors.green,
                checkColor: Colors.white,
                selected: _value,
                value: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ), //CheckboxListTile
            ), //Container
          ), //Padding
        ), //Center
      ), //SizedBox
      //Scaffold
    ); //MaterialApp
  }
}
