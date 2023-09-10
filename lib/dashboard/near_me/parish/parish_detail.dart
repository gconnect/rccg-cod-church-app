import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/event/event_data_source.dart';
import 'package:rccg_cod/dashboard/near_me/near_me_data_source.dart';
import 'package:rccg_cod/utils/constants.dart';

class NearMeDetail extends StatelessWidget {
 final NearMeModel nearMe;
  const NearMeDetail({super.key, required this.nearMe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: (AppBar(title: const Text("Near Me"), backgroundColor: bodyBackgroundColor,)),
      body: SingleChildScrollView(
        child: Container(
        ),
      ),
    );
  }
}
