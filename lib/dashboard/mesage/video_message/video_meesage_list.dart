import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_mesage_card.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_message_detail.dart';
import 'video_datasource.dart';

class VideoMessageList extends StatefulWidget {
  const VideoMessageList({super.key});

  @override
  State<VideoMessageList> createState() => _VideoMessageListState();
}

class _VideoMessageListState extends State<VideoMessageList> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
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
            itemCount: messageList.length,
              itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => VideoMessageDetail(index: index))),
                  child: const VideoMessageCard()
              );
            }),
        ),
      ],
    );
  }
}
