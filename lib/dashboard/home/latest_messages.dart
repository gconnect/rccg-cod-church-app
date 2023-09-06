import 'package:flutter/cupertino.dart';
import 'package:rccg_cod/dashboard/home/live_stream.dart';
import 'package:rccg_cod/dashboard/home/youtube_livestream.dart';

class LatestMessages extends StatefulWidget {
  const LatestMessages({super.key});

  @override
  State<LatestMessages> createState() => _LatestMessagesState();
}

class _LatestMessagesState extends State<LatestMessages> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(left: 24, bottom: 24),
          child:Text("Latest Messages", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LiveStream(),
              LiveStream(),
              LiveStream(),
            ],
          ),
        ),
      ],

    );;
  }
}
