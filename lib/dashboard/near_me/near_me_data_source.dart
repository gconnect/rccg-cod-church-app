import 'package:flutter/cupertino.dart';
import 'package:rccg_cod/dashboard/event/event.dart';
import 'package:rccg_cod/dashboard/event/event_card.dart';

class NearMeModel {
  final String name;
  final String address;
  final String phoneContact;
  final String image;

  NearMeModel(
      {required this.name,
      required this.address,
      required this.phoneContact,
      required this.image});
}

List<NearMeModel> nearMeList = <NearMeModel>[
  NearMeModel(
    name: "City of David RCCG, Eket",
    address: "No. 16 Uqua road Eket, Akwa Ibom state",
    phoneContact: "08167489274 or 07062846732",
    image: "assets/images/event.png",
  ),
  NearMeModel(
    name: "City of David RCCG, Eket",
    address: "No. 16 Uqua road Eket, Akwa Ibom state",
    phoneContact: "08167489274 or 07062846732",
    image: "assets/images/event.png",
  ),
  NearMeModel(
    name: "City of David RCCG, Eket",
    address: "No. 16 Uqua road Eket, Akwa Ibom state",
    phoneContact: "08167489274 or 07062846732",
    image: "assets/images/event.png",
  ),
  NearMeModel(
    name: "City of David RCCG, Eket",
    address: "No. 16 Uqua road Eket, Akwa Ibom state",
    phoneContact: "08167489274 or 07062846732",
    image: "assets/images/event.png",
  ),
];
