import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

import '../Maps/maps.dart';

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
        title: Text('Event'),
      ),
      body: GFCard(
        boxFit: BoxFit.cover,
        titlePosition: GFPosition.start,
        image: Image.network(
          'https://res.cloudinary.com/td-applicatiebeheer-ku-leuven/image/upload/w_800/v1597609115/kulag_dev/BuildingPhotoId-d8fecc4c-dc0d-43c2-8578-636cacca008b.jpg',
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        showImage: true,
        title: GFListTile(
          description: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(widget.name)]),
        ),
        content: Text(
            "This is hidden behind the great tree of time wery confusing idd"), //event explination
        buttonBar: GFButtonBar(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.follow_the_signs_rounded),
              label: Text("Get help from a local"),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                MapUtils.openMap(-3.823216, -38.481700);
              },
              icon: Icon(Icons.location_city),
              label: Text("Show google maps"),
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
