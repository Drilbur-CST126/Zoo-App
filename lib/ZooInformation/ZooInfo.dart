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
      backgroundColor: Colors.lightGreenAccent,
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              child: Align(
                alignment: Alignment.topCenter,
                widthFactor: 1.75,
                heightFactor: 1.75,
                child: Image.asset('assets/parrot.jpg'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: TextSpan(
                text: "Address\n",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  background: Paint()
                    ..color = Color(0xffAED3EA)
                    ..style = PaintingStyle.fill,
                  color: Colors.black.withOpacity(1.0),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "4001 SW Canyon Road\nPortland, OR 97221\n\n",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        background: Paint()
                          ..color = Color(0xffAED3EA)
                          ..style = PaintingStyle.fill,
                        color: Colors.black.withOpacity(1.0),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "*Hours change seasonally*\nSept. 3, 2019 - May 24, 2020\n9:30 a.m. to 4 p.m.\nMay 25, 2020 - Sept 2, 2020\n9:30 a.m. to 6 p.m.\n",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              background: Paint()
                                ..color = Color(0xffAED3EA)
                                ..style = PaintingStyle.fill,
                              color: Colors.black.withOpacity(1.0),
                            ))
                      ]),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
