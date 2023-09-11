import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/custom_drawer.dart';
import 'package:rccg_cod/dashboard/mesage/audio_message/audio_meesage_list.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_meesage_list.dart';
import 'package:rccg_cod/dashboard/near_me/parish/parish_near_me.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class NearMe extends StatefulWidget {
  const NearMe({super.key});

  @override
  State<NearMe> createState() => _NearMeState();
}

class _NearMeState extends State<NearMe> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bodyBackgroundColor,
        appBar: AppBar(
          title:const Text("Near Me"),
          // automaticallyImplyLeading: false,
          leading: const Icon(Icons.notifications_none_outlined),
          backgroundColor: bodyBackgroundColor,
          bottom: const TabBar(
            tabs: [
              Tab( text: "Parish"),
              Tab( text: "House Fellowship")
            ],
          ),
        ),
        endDrawer: const CustomDrawer(),
        body: const TabBarView(
          children: [
            ParishNearMe(),
            ParishNearMe()
          ],
        ),
      ),
    );
  }
}
