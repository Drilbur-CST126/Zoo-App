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
  final _selectedDay = DateTime.now();
  CalendarController _calendarController = new CalendarController();
  bool updated = false;

  @override
  void initState() {
    super.initState();
    _events = {
      _selectedDay: []
    };
    _selectedEvents = _events[_selectedDay];
  }

  Future<void> initilizaion() async {
    _events.clear();
    List<Event> events = await GetEvents();

    for (int i = 0; i < events.length; ++i)
      {
        Duration daydifference = events[i].time.difference(_selectedDay);

        if(daydifference < Duration(days: 1) && daydifference > Duration(days: -1))
          {
            _events.putIfAbsent(_selectedDay, () => []);
          }
        else if(daydifference > Duration(days: 1) && events[i].time.isAfter(_selectedDay))
          {
            _events.putIfAbsent(_selectedDay.add(Duration(days: daydifference.inDays)), () => []);
          }
        else if(daydifference < Duration(days: -1) && events[i].time.isBefore(_selectedDay))
          {
            _events.putIfAbsent(_selectedDay.subtract(Duration(days: daydifference.inDays)), () => []);
          }
        else
          {
            _events = {
              _selectedDay: []
            };
          }
      }

    for (int i = 0; i < events.length; ++i)
      {
        Duration daydifference = events[i].time.difference(_selectedDay);

        if(daydifference < Duration(days: 1) && daydifference > Duration(days: -1))
        {
          _events[_selectedDay].add(events[i]);
        }
        else if(daydifference > Duration(days: 1) && events[i].time.isAfter(_selectedDay))
        {
          _events[_selectedDay.add(Duration(days: daydifference.inDays))].add(events[i]);
        }
        else if(daydifference < Duration(days: -1) && events[i].time.isBefore(_selectedDay))
        {
          _events[_selectedDay.subtract(Duration(days: daydifference.inDays))].add(events[i]);
        }
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
          title: Text(event.toString()),
          onTap: (){
            Navigator.push(this.context, MaterialPageRoute(builder: (context) => EventPage()));
          },
        ),
      )).toList(),
    );
  }
}