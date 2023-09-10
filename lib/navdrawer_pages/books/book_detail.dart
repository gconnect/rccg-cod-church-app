import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/devotionals/devotional_datasource.dart';

import '../../utils/constants.dart';
import 'book_datasource.dart';

class BookDetail extends StatelessWidget {
  final BookModel book;
  const BookDetail({super.key, required this.book});

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
            ],),
        ),
      ),
    );;
  }
}
