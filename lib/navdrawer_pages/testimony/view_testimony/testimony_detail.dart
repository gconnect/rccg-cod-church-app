import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/testimony_data_source.dart';
import 'package:rccg_cod/utils/constants.dart';

class TestimonyDetail extends StatelessWidget {
final TestimonyModel testimony;

  const TestimonyDetail({super.key, required this.testimony});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(
        title: const Text("Testimony"),
        backgroundColor: bodyBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
              const Text("Title:", style: TextStyle(height: 1.7)),
              const SizedBox(width: 10.0,),
              Text(testimony.testimonyTitle, style: const TextStyle(fontWeight: FontWeight.bold, height: 1.7))
            ],),
            Row(children: [
              const Text("Date:", style: TextStyle( height: 1.7)),
              const SizedBox(width: 10.0,),
              Text(testimony.date,  style: const TextStyle(fontWeight: FontWeight.bold, height: 1.7))
            ],),
            Row(children: [
              const Text("Name:",  style: TextStyle( height: 1.7)),
              const SizedBox(width: 10.0,),
              Text(testimony.name, style: const TextStyle(fontWeight: FontWeight.bold, height: 1.7))
            ],),
            Row(children: [
              const Text("sex:",  style: TextStyle( height: 1.7)),
              const SizedBox(width: 10.0,),
              Text(testimony.sex, style: const TextStyle(fontWeight: FontWeight.bold, height: 1.7))
            ],),
            Row(children: [
              const Text("Location:",  style: TextStyle( height: 1.7)),
              const SizedBox(width: 10.0,),
              Text(testimony.location, style: const TextStyle(fontWeight: FontWeight.bold, height: 1.7))
            ],),
            const Padding(
              padding: EdgeInsets.only(top:18.0, bottom: 18.0),
              child: Text("Testimony:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ),
            Text(testimony.content, style: const TextStyle(fontSize: 16, height: 1.7), textAlign: TextAlign.justify,)
          ],),
        ),
      ),
    );
  }
}
