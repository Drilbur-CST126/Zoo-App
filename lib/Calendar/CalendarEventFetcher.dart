import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'event.dart';
import 'package:http/http.dart' as http;

class CalendarEventFetcher
{
  List<Event> events = List();
  static const String eventurl = "https://zooappwebapi.azurewebsites.net/api/event";
  static const String detailurl = "https://zooappwebapi.azurewebsites.net/api/detail";

  static Future<CalendarEventFetcher> create() async {
    var fetcher = CalendarEventFetcher();
    await fetcher.update();
    return fetcher;
  }

  // This function contacts the database to get the events, then calls decodeEventResponses to put them in 'events'.
  // It then does something similar for details, being appended to corresponding events.
  Future<void> update() async {
    final eventResponse = await http.get(eventurl, headers: {"Accept" : "application/json"});

    if (eventResponse.statusCode == 200) {
      debugPrint("update call");
      decodeEventResponses(json.decode(eventResponse.body));
    } else {
      throw Exception("Failed to connect to database.");
    }

    final detailResponse = await http.get(detailurl, headers: {"Accept" : "application/json"});

    if (detailResponse.statusCode == 200) {
      debugPrint("update call");
      decodeDetailResponses(json.decode(detailResponse.body));
    } else {
      throw Exception("Failed to connect to database.");
    }
  }

  // This function gets all Events from the json list and puts them in 'events'.
  void decodeEventResponses(List<dynamic> json) {
    for (var jsonEvent in json) {
      var event = Event(jsonEvent["event_id"], jsonEvent["title"], new List<Detail>());
      events.add(event);
    }
  }

  // This function gets all details, and puts them in their event.
  void decodeDetailResponses(List<dynamic> json) {
    for (var jsonDetail in json) {
      var detail = Detail(jsonDetail["detail_id"], jsonDetail["event_id"], jsonDetail["description"]);
      events.firstWhere((e) => e.ID == detail.eventID).details.add(detail);
      if (events.firstWhere((e) => e.ID == detail.eventID).time == null){
        events.firstWhere((e) => e.ID == detail.eventID).SetTime(DateTime.parse(jsonDetail["date"]));
      }
    }
  }

  List<Event> getEvents(){
    List<Event> returnList = new List<Event>();
    for (var event in events){
      if(event.time != null){
        returnList.add(event);
      }
    }

    return returnList;
  }
}