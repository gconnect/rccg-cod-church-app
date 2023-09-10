import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/near_me/parish/parish_near_me.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/view_testimony/view_testimony.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/write_testimony/write_testimony.dart';
import 'package:rccg_cod/utils/constants.dart';

class Testimony extends StatefulWidget {
  const Testimony({super.key});

  @override
  State<Testimony> createState() => _TestimonyState();
}

class _TestimonyState extends State<Testimony> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bodyBackgroundColor,
        appBar: AppBar(
          title: const Text("Testimony"),
          backgroundColor: bodyBackgroundColor,
          bottom: const TabBar(
            tabs: [
              Tab( text: "View"),
              Tab( text: "Write")
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ViewTestimony(),
            WriteTestimony()
          ],
        ),
      ),
    );
  }
}
