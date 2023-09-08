import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/mesage/audio_message/audio_mesage_card.dart';
import 'package:rccg_cod/dashboard/mesage/audio_message/audio_message_detail.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_mesage_card.dart';
import 'package:rccg_cod/dashboard/mesage/video_message/video_message_detail.dart';
import 'audio_datasource.dart';

class AudioMessageList extends StatefulWidget {
  const AudioMessageList({super.key});

  @override
  State<AudioMessageList> createState() => _AudioMessageListState();
}

class _AudioMessageListState extends State<AudioMessageList> {

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
            itemCount: audioList.length,
              itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => AudioMessageDetail(index: index))),
                  child: const AudioMessageCard()
              );
            }),
        ),
      ],
    );
  }
}
