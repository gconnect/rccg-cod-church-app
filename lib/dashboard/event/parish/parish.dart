import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/event/event_card.dart';
import 'package:rccg_cod/dashboard/event/event_data_source.dart';
import 'package:rccg_cod/dashboard/event/event_detail.dart';

class Parish extends StatefulWidget {
  const Parish({super.key});

  @override
  State<Parish> createState() => _ParishState();
}

class _ParishState extends State<Parish> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onChanged: (value) {
              // Handle search text changes here
              print('Search text: $value');
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: eventList.length,
              itemBuilder: (
              BuildContext context, int index) =>
                  GestureDetector(
                    child: EventCard(title: eventList[index].title,
                        date: eventList[index].date, eventflier: eventList[index].eventFlier),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => EventDetail(event: eventList[index]))),
                  ),
          ),
        ),
      ],
    );
  }
}
