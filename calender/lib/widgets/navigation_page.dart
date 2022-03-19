import 'package:flutter/material.dart';

import 'discription_to_place.dart';

// importing material design library

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
// value set to false
  bool _value = false;

  var locations = [
    "Aula 44 00.2.02",
    "Lab Physics (01.3.01)",
    "Lab Thermic Machines (01.3.02/3.03)",
    "Les- of Vergaderlokaal (01.3.08)",
    "Leslokaal (01.5.02)",
    "Leslokaal (01.6.01)",
    "PC-lokaal (01.6.02)",
    "PC-lokaal (01.6.03)",
    "Leslokaal (01.7.01)",
    "PC-lokaal (01.7.02)",
    "PC-lokaal (01.7.03)"
  ];
// App widget tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: SizedBox(
          width: 400,
          height: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amberAccent),
                  borderRadius: BorderRadius.circular(20),
                ), //BoxDecoration

                /** CheckboxListTile Widget **/
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return ListTile(
                        leading: Icon(Icons.class__outlined),
                        title: Text(locations[index]),
                        subtitle: Text("Show location tips"),
                        autofocus: false,
                        selected: _value,
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => EventPage(
                                        name: locations[index],
                                      )),
                            ));
                  },
                  itemCount: locations.length,

                  //CheckboxListTile
                ), //Container
              ), //Padding
            ), //Center
          ), //SizedBox
          //Scaffold
        )); //MaterialApp
  }
}
