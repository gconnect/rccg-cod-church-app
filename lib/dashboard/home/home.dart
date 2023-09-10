import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/home/devotional_section.dart';
import 'package:rccg_cod/dashboard/home/latest_messages.dart';
import 'package:rccg_cod/dashboard/home/menu_section.dart';
import 'package:rccg_cod/dashboard/home/upcoming_events.dart';
import 'package:rccg_cod/dashboard/home/youtube_livestream.dart';
import 'package:rccg_cod/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          YoutubeLiveStream(),
          MenuSection(),
          LatestMessages(),
          DevotionalSection(),
          UpcomingEvents()
        ],),
      );
  }
}