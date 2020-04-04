class Event {
  int ID;
  String title;
  DateTime time;
  List<Detail> details;

  Event(this.ID, this.title, this.time, this.details);
}

class Detail {
  int ID;
  int eventID;
  String descriptions;

  Detail(this.ID, this.eventID, this.descriptions);
}