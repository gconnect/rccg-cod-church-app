import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/home/youtube_livestream.dart';

class AudioMessageDetail extends StatefulWidget {
  final int index;
  const AudioMessageDetail({super.key, required this.index});

  @override
  State<AudioMessageDetail> createState() => _AudioMessageDetailState();
}

class _AudioMessageDetailState extends State<AudioMessageDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.index.toString()),),
        body: const YoutubeLiveStream());
  }
}
