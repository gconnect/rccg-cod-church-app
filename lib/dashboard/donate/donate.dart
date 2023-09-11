import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/custom_drawer.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'donation_data_source.dart';
import 'donation_item.dart';

class Donate extends StatelessWidget {
  const Donate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(backgroundColor: bodyBackgroundColor,
        title: const Text("Donate"),
        leading: const Icon(Icons.notifications_none_outlined),
      ),
      endDrawer: const CustomDrawer(),
      body: Container(
        margin: EdgeInsets.all(16),
        child:
      Column(children: [
       const Text("You can do bank transfer to any of the following account",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
       const SizedBox(height: 20,),
       Expanded(
         child: ListView.builder(
           itemCount: donations.length,
             itemBuilder: (BuildContext context, int index) =>
             DonationItem(
                 donationType: donations[index].donationType,
                 bankName: donations[index].bankName,
                 accountName: donations[index].accountName,
                 accountNumber: donations[index].accountNumber
             )
         ),
       )
      ],),),
    );
  }
}
