import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/event/event_data_source.dart';
import 'package:rccg_cod/utils/constants.dart';

class EventDetail extends StatelessWidget {
 final EventModel event;
  const EventDetail({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: (AppBar(title: const Text("Event"), backgroundColor: bodyBackgroundColor,)),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                child: Image(image: AssetImage(event.eventFlier), fit: BoxFit.cover,)),
            Text(event.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            const SizedBox(height: 10,),
            Text(event.content, style: const TextStyle(), textAlign: TextAlign.justify,)
          ],),
        ),
      ),
    );
  }
}
