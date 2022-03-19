import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../pages/options.dart';
import 'eventpage.dart';

class EventCard extends StatefulWidget {
  final picture1; 
  final name1;
  final schild1;
  const EventCard({Key? key, this.picture1, this.name1,this.schild1}) : super(key: key);
  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => EventPage()),
            ),
        child: GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.end,
          image: Image.network(widget.picture1,
            height: 300.0,
            width: double.infinity,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          showOverlayImage: true,
          imageOverlay: NetworkImage(widget.picture1),
          title: GFListTile(
            description: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("", style: TextStyle(color: Colors.white)),
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
              child: Image.network(widget.schild1
                ,
                width: 30,
                height: 30,
              ),
            ),
          ),
          content: Text(widget.name1
            ,
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
