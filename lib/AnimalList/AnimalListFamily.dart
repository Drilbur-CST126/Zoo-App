import 'package:flutter/material.dart';

class AnimalListFamily extends StatefulWidget{
  @override
  AnimalListFamilyState createState() => AnimalListFamilyState();
}

class AnimalListFamilyState extends State<AnimalListFamily>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Text("Family"),
        )
    );
  }
}