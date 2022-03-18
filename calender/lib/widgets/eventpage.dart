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
        title: GFListTile(
          avatar: GFAvatar(
            backgroundImage: NetworkImage(
                'https://www.kuleuven.be/toekomstigestudenten/openles/leuven/images/vtk-schild.png/image_preview'),
          ),
          titleText: 'Title',
          subTitleText: 'VTK', //of wie het ook geeft
        ),
        content: Text(
            "a very very fun explination about the event and life ect, blablalbababbalbalbalblablalbalbalablablbalbalbalbalbalba"),
        buttonBar: GFButtonBar(
          children: <Widget>[
            GFAvatar(
              backgroundColor: GFColors.PRIMARY,
              child: Icon(
                Icons.facebook,
                color: Colors.white,
              ),
            ),
            GFAvatar(
              backgroundColor: GFColors.SECONDARY,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            GFAvatar(
              backgroundColor: GFColors.SUCCESS,
              child: Icon(
                Icons.facebook,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ), //Scaffold
    ); //MaterialApp
  }
}
