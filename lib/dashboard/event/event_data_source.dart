import 'package:flutter/cupertino.dart';
import 'package:rccg_cod/dashboard/event/event.dart';
import 'package:rccg_cod/dashboard/event/event_card.dart';

class EventModel {
  final String title;
  final String date;
  final String eventFlier;
  final String content;

  EventModel({
    required this.title,
    required this.date,
    required this.eventFlier,
    required this.content,
  });
}

String multiLineContent = """
      For those who will like to go to Israel on pilgrimage with Pastor E.A. Adeboye you can now do so.

      By the grace of God we are going to Israel again in May 2023. The Theme for the 2023 Israel pilgrimage is ABBA FATHER.

      Date: Tuesday, 27 Feb, 2023. Venue: No. 16 Uqua road, Eket, Akwa Ibom State
""";

List<EventModel> eventList = <EventModel>[
  EventModel(
      title: "Redemption camp residents registration",
      date: "Tuesday, 27 Feb, 2023",
      eventFlier: "assets/images/event.png",
      content: multiLineContent),

  EventModel(
      title: "Redemption camp residents registration2",
      date: "Tuesday, 27 Feb, 2023",
      eventFlier: "assets/images/event.png",
      content: multiLineContent),

  EventModel(
      title: "Redemption camp residents registration3",
      date: "Tuesday, 27 Feb, 2023",
      eventFlier: "assets/images/event.png",
      content: multiLineContent),

  EventModel(
      title: "Redemption camp residents registration4",
      date: "Tuesday, 27 Feb, 2023",
      eventFlier: "assets/images/event.png",
      content: multiLineContent),
];
