import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

// importing material design library

class EventPage extends StatefulWidget {
  final String name;
  const EventPage({Key? key, required this.name}) : super(key: key);
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
// value set to false

// App widget tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buddy Event'),
      ),
      body: GFCard(
        boxFit: BoxFit.cover,
        titlePosition: GFPosition.start,

        showImage: false,
        title: GFListTile(
          description: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text(widget.name)]),
        ),
        content:
            Text("PLSSSSS be my friend plsss come come"), //event explination
        buttonBar: GFButtonBar(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.follow_the_signs_rounded),
              label: Text("Contact the poster"),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ), //Scaffold
    ); //MaterialApp
  }
}
