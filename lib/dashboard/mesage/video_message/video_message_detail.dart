import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/home/youtube_livestream.dart';

class VideoMessageDetail extends StatefulWidget {
  final int index;
  const VideoMessageDetail({super.key, required this.index});

  @override
  State<VideoMessageDetail> createState() => _VideoMessageDetailState();
}

class _VideoMessageDetailState extends State<VideoMessageDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.index.toString()),),
        body: const YoutubeLiveStream());
  }
}
