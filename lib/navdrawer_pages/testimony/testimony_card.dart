import 'package:flutter/material.dart';
import 'package:rccg_cod/utils/constants.dart';

class TestimonyCard extends StatefulWidget {
  final String testimonyTitle;
  final String date;
  final String content;

  TestimonyCard(
      {required this.testimonyTitle,
      required this.date,
      required this.content});

  @override
  State<TestimonyCard> createState() => _TestimonyCardState();
}

class _TestimonyCardState extends State<TestimonyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: buttonColor,
      ),
      margin: const EdgeInsets.only(top: 10, left: 18, right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(widget.testimonyTitle, style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(widget.date),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              widget.content,
              style: TextStyle(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
