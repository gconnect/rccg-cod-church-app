import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/profile/profile_pix.dart';
import 'package:rccg_cod/utils/constants.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(24),
        child: Column(children: [
          const ProfilePix(),
          _fullName(),
          _gender(),
          _dateOfBirth(),
          _email(),
          _houseAddress(),
          _occupation(),
          _saveButton()
        ],),
      ),
    );
  }
}


Widget _fullName () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Full name"
      ),
    ),
  );
}

Widget _gender () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Gender"
      ),
    ),
  );
}

Widget _dateOfBirth () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Date of Birth"
      ),
    ),
  );
}

Widget _email () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Email"
      ),
    ),
  );
}

Widget _houseAddress () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "House Address"
      ),
    ),
  );
}
Widget _occupation () {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Occupation"
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