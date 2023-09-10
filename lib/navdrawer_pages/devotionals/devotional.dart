import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/devotionals/devotional_card.dart';
import 'package:rccg_cod/navdrawer_pages/devotionals/devotional_datasource.dart';
import 'package:rccg_cod/utils/constants.dart';

import 'devotional_detail.dart';

class Devotionals extends StatelessWidget {
  const Devotionals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Devotionals"),
          backgroundColor: bodyBackgroundColor,
        automaticallyImplyLeading: true,
        ),
        backgroundColor: bodyBackgroundColor,

        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
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
                itemCount: devotionals.length,
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                      child: DevotionalCard(topic: devotionals[index].topic,
                        memoryVerse: devotionals[index].memoryVerse,),
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(
                              builder: (builder) =>
                                  DovotionalDetail(
                                      devotional: devotionals[index]))),
                    ),
              ),
            ),
          ],
        ),
    );
  }
}
