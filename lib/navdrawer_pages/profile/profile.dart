import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/profile/personal.dart';
import 'package:rccg_cod/navdrawer_pages/profile/security.dart';

import '../../utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bodyBackgroundColor,
        appBar: AppBar(
          title: const Text("Profile"),
          automaticallyImplyLeading: true,
          backgroundColor: bodyBackgroundColor,
          bottom: const TabBar(
            tabs: [
              Tab( text: "Personal"),
              Tab( text: "Security")
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Personal(),
            Security()
          ],
        ),
      ),
    );
  }
}
