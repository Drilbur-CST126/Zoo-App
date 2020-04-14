import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zoo_app/Calendar/CalendarEventFetcher.dart';

import 'view/loadingWidget.dart';
import 'Calendar/event.dart';
import 'Event.dart';

class CalendarPage extends StatefulWidget{
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<CalendarPage>{
  Map<DateTime, List> _events = Map<DateTime,List>();
  List _selectedEvents;
  DateTime _selectedDay;
  CalendarController _calendarController = new CalendarController();
  bool updated = false;

  @override
  void initState() {
    super.initState();
    String todayDate = DateTime.now().toString();
    todayDate = todayDate.substring(0,10);
    _selectedDay = DateTime.parse(todayDate);
    _events = {
      _selectedDay: []
    };
    _selectedEvents = _events[_selectedDay];
  }

  Future<void> initilizaion() async {
    _events.clear();
    List<Event> events = await GetEvents();

    for (var event in events) {
      _events.putIfAbsent(event.time, () => []);
      _events[event.time].add(event);
    }

    _selectedEvents = _events.containsKey(_selectedDay) ? _events[_selectedDay] : List();
  }

  Future<List<Event>> GetEvents() async {
    CalendarEventFetcher fetcher = new CalendarEventFetcher();
    await fetcher.update();
    return fetcher.getEvents();
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
    if (!updated) {
      return FutureBuilder<void>(
          future: initilizaion(),
          builder: CreatePage,
      );
    } else {
      return CreatePage(context);
    }
  }

  Widget CreatePage(BuildContext context, [AsyncSnapshot snapshot]) {

    if(updated || snapshot.hasData)
      {
        updated = true;
        return Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildCalendar(),
              Expanded(child: buildEventList()),
            ]
        );
      }
    else
      {
        updated = true;
        return LoadingWidget();
      }
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
          title: Text(event.title.toString()),
          onTap: (){
            Navigator.push(this.context, MaterialPageRoute(builder: (context) => EventPage()));
          },
          ),
        )
      ).toList(),
    );
  }
}