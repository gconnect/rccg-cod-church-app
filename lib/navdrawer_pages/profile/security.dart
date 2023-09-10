import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/profile/profile_pix.dart';

import '../../utils/constants.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(children: [
        const ProfilePix(),
        _currentPassword(),
        _newPassword(),
        _confirmPassword(),
        _saveButton()

      ],),
    );
  }
}


Widget _currentPassword () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Current password"
      ),
    ),
  );
}

Widget _newPassword () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "New password"
      ),
    ),
  );
}

Widget _confirmPassword () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Confirm password"
      ),
    ),
  );
}

Widget _saveButton () {
  return SizedBox(
    width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
          onPressed: () {print("clicked"); },
          child: const Text("Save"),
    ),
      ),
  );
}