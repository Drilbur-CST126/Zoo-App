import 'package:flutter/material.dart';

class AnimalListRegion extends StatefulWidget{
  @override
  AnimalListRegionState createState() => AnimalListRegionState();
}

class AnimalListRegionState extends State<AnimalListRegion>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Region"),
        )
    );
  }
}