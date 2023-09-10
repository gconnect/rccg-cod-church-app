import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/devotionals/devotional_datasource.dart';

import '../../utils/constants.dart';

class DovotionalDetail extends StatelessWidget {
  final DevotionalModel devotional;
  const DovotionalDetail({super.key, required this.devotional});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: (AppBar(title: const Text("Devotional"), backgroundColor: bodyBackgroundColor,)),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Image(image: AssetImage("assets/images/event.png"), fit: BoxFit.cover,)),
              Text(devotional.topic, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Text(devotional.biblePassage, style: const TextStyle(), textAlign: TextAlign.justify,),
              const SizedBox(height: 10,),
              Text(devotional.content, style: const TextStyle(), textAlign: TextAlign.justify,)
            ],),
        ),
      ),
    );;
  }
}
