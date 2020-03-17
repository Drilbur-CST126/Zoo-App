import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventPage extends StatefulWidget{
  @override
  EventPageState createState() => EventPageState();
}

class EventPageState extends State<EventPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Event')
      ),
      body: new Center(
        child: Text('I\'m an Event page'),
      ),
    );
  }
}