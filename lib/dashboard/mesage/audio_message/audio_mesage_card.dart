import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/home/live_stream.dart';

class AudioMessageCard extends StatefulWidget {
  const AudioMessageCard({super.key});

  @override
  State<AudioMessageCard> createState() => _AudioMessageCardState();
}

class _AudioMessageCardState extends State<AudioMessageCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
            Container(
              width: 150,
                height: 150,
                child: const LiveStream()),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(24),
                child:  const Column(children: [
                  Text("God's Kingdom and his...", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("By Pastor E. A. Adeboye"),
                  SizedBox(height: 30,),
                ],
                ),
              ),
            ),
            Row(children: [
              GestureDetector(
                onTap: () =>{
                  print("fav")
                },
                  child: const Icon(Icons.favorite_border)
              ),
              GestureDetector(
                onTap: () =>{},
                  child: const Icon(Icons.more_vert)
              )
            ],)
          ],),
          Divider(color: Colors.purple.shade700,)
        ],
      ),
    );
  }
}
