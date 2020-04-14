import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Calendar/event.dart';

class EventPage extends StatefulWidget{
  EventPage({@required this.event});

  Event event;

  @override
  EventPageState createState() => EventPageState(event: event);
}

class EventPageState extends State<EventPage> {
  EventPageState({@required this.event});

  Event event;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(event.title)
      ),
      body: new Center(
        child: Text(event.details[0].descriptions),
      ),
    );
  }
}