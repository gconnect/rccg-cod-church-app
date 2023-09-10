import 'package:flutter/material.dart';
import 'package:rccg_cod/utils/constants.dart';

class BookCard extends StatelessWidget {
  final String name;
  final String image;
  const BookCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, top: 8),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            greenColor,
            blueColor,
          ], // Replace with your desired gradient colors
        ),
      ),
      child: Column(
        children: [
          Image(image: AssetImage(image), width: 170, height: 130,),
          Expanded(
             child: Container(
               margin: const EdgeInsets.only(top: 10),
               decoration: const BoxDecoration(
                   color: blueColor,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
                       topRight: Radius.circular(8))),
               height: 100,
               child: Padding(
                 padding: const EdgeInsets.only(top: 18.0, bottom: 10),
                 child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold),
                   textAlign: TextAlign.center,),
               ),
             ),
           ),

        ],
      ),
    );
  }
}
