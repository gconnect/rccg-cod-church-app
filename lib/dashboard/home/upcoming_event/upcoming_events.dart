import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/event/event_card.dart';
import 'package:rccg_cod/dashboard/event/event_data_source.dart';
import 'package:rccg_cod/dashboard/event/event_detail.dart';
import 'package:rccg_cod/dashboard/home/upcoming_event/upcoming_event_card.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 24),
            child: const Text(
              "Upcoming Events",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: eventList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => EventDetail(event: eventList[index]))),
                  child: UpcomingEventCard(image: eventList[index].eventFlier))
          ),
        )
      ],
    );
  }
}
