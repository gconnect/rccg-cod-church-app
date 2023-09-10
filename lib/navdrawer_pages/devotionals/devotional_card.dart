import 'package:flutter/material.dart';

class DevotionalCard extends StatelessWidget {
  final String topic;
  final String memoryVerse;
  const DevotionalCard({super.key, required this.topic, required this.memoryVerse});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, top: 8),
      child: Column(
        children: [
          Row(
            children: [
            Expanded(
              child: Stack(
                children: [
                  const Image(image: AssetImage("assets/images/event.png"), width: 170, height: 130,),
                  Container(color: Colors.black54,
                    width: 166,
                    height: 127,
                  ),
                  const Positioned(
                      top: 50,
                      left: 50,
                      child: Text("27th\n Febraury", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        textAlign: TextAlign.center,)
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text(topic),
                Text(memoryVerse)
              ],),
            )

          ],),
          const Divider(color: Colors.purple,)

        ],
      ),
    );
  }
}
