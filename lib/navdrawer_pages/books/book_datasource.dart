import 'package:flutter/cupertino.dart';
import 'package:rccg_cod/dashboard/event/event.dart';
import 'package:rccg_cod/dashboard/event/event_card.dart';

class BookModel {
  final String name;
  final String image;

  BookModel(
      { required this.name, required this.image});
}

List<BookModel> books = <BookModel>[
  BookModel(
    name: "Workings in training (Teachers)",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Mathematics of greateness",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Workings in training (Teachers)",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Mathematics of greateness",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Workings in training (Teachers)",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Mathematics of greateness",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Workings in training (Teachers)",
    image: "assets/images/event.png",
  ),
  BookModel(
    name: "Mathematics of greateness",
    image: "assets/images/event.png",
  ),

];
