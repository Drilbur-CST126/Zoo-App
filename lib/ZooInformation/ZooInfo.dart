import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ZooInfo extends StatefulWidget {
  @override
  ZooInfoState createState() => ZooInfoState();
}

class ZooInfoState extends State<ZooInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Stack(children: <Widget>[
          Image.asset('assets/parrot.jpg'),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Address\n4001 SW Canyon Road\nPortland, OR 97221\n\nHours change seasonally\nSept. 3, 2019 - May 24, 2020\n9:30 a.m. to 4 p.m.\nMay 25, 2020 - Sept 2, 2020\n9:30 a.m. to 6 p.m.\n",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                background: Paint()
                  ..color = Color(0xffF2A7B3)
                  ..style = PaintingStyle.fill,
                color: Colors.black.withOpacity(1.0),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
