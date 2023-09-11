import 'package:flutter/material.dart';

class UpcomingEventCard extends StatefulWidget {
  final String image;
  const UpcomingEventCard({super.key, required this.image});

  @override
  State<UpcomingEventCard> createState() => _UpcomingEventCardState();
}

class _UpcomingEventCardState extends State<UpcomingEventCard> {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(widget.image), width: 200, height: 200,);
  }
}
