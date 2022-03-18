import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../pages/options.dart';

class EventCard extends StatefulWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          MaterialPageRoute(builder: (_) => OptionsPage());
        },
        child: GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.end,
          image: Image.network(
            'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
            height: 300.0,
            width: double.infinity,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          showOverlayImage: true,
          imageOverlay: const NetworkImage(
              'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo='),
          title: GFListTile(
            description: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Title", style: TextStyle(color: Colors.white)),
                IconButton(
                  icon: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 20,
                      )),
                  color: Colors.white,
                  onPressed: () {
                    print("pressed");
                  },
                ),
              ],
            ),
            onTap: () {},
            avatar: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: Image.network(
                'https://www.kuleuven.be/toekomstigestudenten/openles/leuven/images/vtk-schild.png/image_preview',
                width: 30,
                height: 30,
              ),
            ),
          ),
          content: Text(
            "Cantus party xxl fun",
            style: TextStyle(color: Colors.white),
          ),
          // buttonBar: GFButtonBar(
          //   alignment: WrapAlignment.start,
          //   children: <Widget>[
          //     RaisedButton(
          //       onPressed: () {},
          //       color: Colors.amber,
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(30)),
          //       child: Icon(
          //         Icons.facebook_outlined,
          //         color: Colors.white,
          //         size: 50,
          //       ),
          //     )
          //   ],
          //     GFAvatar(
          //       backgroundColor: Colors.blue,
          //       child: Icon(
          //         Icons.facebook,
          //         color: Colors.white,
          //       ),
          //     ),
          //     GFAvatar(
          //       backgroundColor: Colors.blue,
          //       child: Icon(
          //         Icons.web_stories,
          //       ),
          //     ),
          //   ],
          // ),
        ));
  }
}
