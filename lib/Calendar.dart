import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zoo_app/Calendar/CalendarEventFetcher.dart';

import 'Calendar/event.dart';
import 'Event.dart';

class CalendarPage extends StatefulWidget{
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<CalendarPage>{
  Map<DateTime, List> _events = Map<DateTime,List>();
  List _selectedEvents;
  CalendarController _calendarController = new CalendarController();
  CalendarEventFetcher fetcher = new CalendarEventFetcher();

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    List<Event> events = fetcher.getEvents();


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