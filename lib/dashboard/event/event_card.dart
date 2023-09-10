import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  final String title;
  final String date;
  final String eventflier;
  const EventCard({super.key, required this.title, required this.date, required this.eventflier});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(8),
      child: Column(children: [
         Container(
           // margin: const EdgeInsets.all(8),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(widget.title,  style: const TextStyle(fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.left, maxLines: 1, overflow: TextOverflow.ellipsis,),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 0),
                    child: Text(widget.date, textAlign: TextAlign.left,))
              ],),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Image(image: AssetImage(widget.eventflier)))
        ],),
         ),
        Divider(color: Colors.purple.shade500,)
      ],),
    );
  }
}
