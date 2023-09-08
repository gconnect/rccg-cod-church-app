import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/home/live_stream.dart';
import 'package:rccg_cod/utils/constants.dart';

class VideoMessageCard extends StatefulWidget {
  const VideoMessageCard({super.key});

  @override
  State<VideoMessageCard> createState() => _VideoMessageCardState();
}

class _VideoMessageCardState extends State<VideoMessageCard> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(children: [
          LiveStream(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(24),
              child:  Column(children: [
                const Text("God's Kingdom and his...", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                const Text("By Pastor E. A. Adeboye"),
                const SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.all(8),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("27th Feb, 2023"),
                    Text("303Mb"),
                  ],),
                ),
              ],
              ),
            ),
          ),
        ],),
        Divider(color: Colors.purple.shade700,)
      ],
    );
  }
}
