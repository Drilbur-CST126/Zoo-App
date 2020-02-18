import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 800,
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage('assets/elephant3.jpg'),
              AssetImage('assets/otter2.jpg'),
              AssetImage('assets/tiger1.jpg'),
              AssetImage('assets/bear.jpg')
            ],
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 2000),
            autoplay: true,
            indicatorBgPadding: 0.25,
            dotSize: .5,
            dotColor: Colors.transparent,
            dotBgColor: Colors.white70,
          ),
        )
    );
  }
}