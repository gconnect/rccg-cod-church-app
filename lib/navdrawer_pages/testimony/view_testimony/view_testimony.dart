import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/testimony_card.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/testimony_data_source.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/view_testimony/testimony_detail.dart';

class ViewTestimony extends StatefulWidget {
  const ViewTestimony({super.key});

  @override
  State<ViewTestimony> createState() => _ViewTestimonyState();
}

class _ViewTestimonyState extends State<ViewTestimony> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: testimonies.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) =>
                            TestimonyDetail(testimony: testimonies[index])))
              },
              child: TestimonyCard(
                  testimonyTitle: testimonies[index].testimonyTitle,
                  date: testimonies[index].date,
                  content: testimonies[index].content),
            ));
  }
}
