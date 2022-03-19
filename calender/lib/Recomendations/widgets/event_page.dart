import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

// importing material design library

class EventPage extends StatefulWidget {
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
          'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        showImage: true,

        content: Text(
            "AT THE AFT HACKATLON : \n ITS EVEN MORE FUN If NO ONE KNOWS HOW TO CODE!"), //event explination
        buttonBar: GFButtonBar(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.follow_the_signs_rounded),
              label: Text("Looking for a fiend"),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.social_distance),
              label: Text("Social"),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.run_circle_outlined),
              label: Text("Going Alone"),
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
