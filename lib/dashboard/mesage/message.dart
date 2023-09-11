import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/custom_drawer.dart';
import 'package:rccg_cod/dashboard/mesage/audio_message/audio_meesage_list.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_meesage_list.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bodyBackgroundColor,
        appBar: AppBar(
          title: const Text("Message"),
          leading: const Icon(Icons.notifications_none_outlined),
          automaticallyImplyLeading: false,
          backgroundColor: bodyBackgroundColor,
          bottom: const TabBar(
            tabs: [
              Tab( text: "Video Messages"),
              Tab( text: "Audio Messages")
            ],
          ),
        ),
        endDrawer: const CustomDrawer(),
        body: const TabBarView(
          children: [
            VideoMessageList(),
            AudioMessageList()
          ],
        ),
      ),
    );
  }
}
