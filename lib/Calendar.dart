import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Event.dart';

class CalendarPage extends StatefulWidget{
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<CalendarPage>{
  Map<DateTime, List> _events;
  List _selectedEvents;
  CalendarController _calendarController = new CalendarController();

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    _events = {
      _selectedDay.subtract(Duration(days: 10)): ['Event A4', 'Event B4', 'Event C4'],
      _selectedDay.subtract(Duration(days: 4)): ['Event A5', 'Event B5', 'Event C5'],
      _selectedDay.subtract(Duration(days: 2)): ['Event A6', 'Event B6'],
      _selectedDay: ['Event A2', 'Event A7', 'Event B7', 'Event C7'],
      _selectedDay.add(Duration(days: 1)): ['Event A8', 'Event B8', 'Event C8', 'Event D8'],
      _selectedDay.add(Duration(days: 3)): ['Event A9', 'Event A9', 'Event B9'],
      _selectedDay.add(Duration(days: 7)): ['Event A10', 'Event B10', 'Event C10'],
    };

    _selectedEvents = _events.containsKey(_selectedDay) ? _events[_selectedDay] : List();

  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void onDaySelected(DateTime day, List events) {
    setState(() {
      _selectedEvents = events;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        buildCalendar(),
        Expanded(child: buildEventList()),
      ]
    );
  }

  Widget buildCalendar(){
    return TableCalendar(
      calendarController: _calendarController,
      initialCalendarFormat: CalendarFormat.week,
      availableCalendarFormats: const {
        CalendarFormat.week: ''
      },
      events: _events,
      onDaySelected: onDaySelected,
    );
  }

  Widget buildEventList() {
    return ListView(
      children: _selectedEvents.map((event) => Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.8),
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ListTile(
          title: Text(event.toString()),
          onTap: (){
            Navigator.push(this.context, MaterialPageRoute(builder: (context) => EventPage()));
          },
        ),
      )).toList(),
    );
  }
}