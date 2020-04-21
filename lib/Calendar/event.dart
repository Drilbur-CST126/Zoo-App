class Event {
  int ID;
  String title;
  DateTime time;
  List<Detail> details;

  Event(this.ID, this.title, this.details){
    time = null;
  }
  SetTime(DateTime inputTime) {
    time = inputTime;
  }
}

class Detail {
  int ID;
  int eventID;
  String descriptions;

  Detail(this.ID, this.eventID, this.descriptions);
}