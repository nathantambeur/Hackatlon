import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';

import '../pages/options.dart';
import 'navigation_page.dart';

class NavigationCard extends StatefulWidget {
  final picture;
  final name;
  const NavigationCard({Key? key, this.picture, this.name}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<NavigationCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => NavigationPage()),
            ),
        child: GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.end,
          image: Image.network(
            widget.picture,
            height: 300.0,
            width: double.infinity,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          showOverlayImage: true,
          imageOverlay: NetworkImage(widget.picture),
          title: GFListTile(
            description: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          content: Text(
            widget.name,
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
