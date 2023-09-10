import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/event/parish/parish.dart';
import 'package:rccg_cod/dashboard/mesage/audio_message/audio_meesage_list.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_meesage_list.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: bodyBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: bodyBackgroundColor,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Parish"),
              Tab(text: "Zone"),
              Tab(text: "Province"),
              Tab(text: "Regional"),
              Tab(text: "National"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Parish(),
            Parish(),
            Parish(),
            Parish(),
            Parish(),
          ],
        ),
      ),
    );
  }
}
