import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class WriteTestimony extends StatefulWidget {
  const WriteTestimony({super.key});

  @override
  State<WriteTestimony> createState() => _WriteTestimonyState();
}

class _WriteTestimonyState extends State<WriteTestimony> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(18),
        child: Column(
          children: [
            _fullName(),
            _Email(),
            _location(),
            SizedBox(height: 18.0,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [TestimonyTitle(), Gender()],
            ),
            _testimony(),
            _submitButton()
          ],
        ),
      ),
    );
  }
}

Widget _fullName() {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(hintText: "Full Name"),
    ),
  );
}

Widget _Email() {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(hintText: "Email"),
    ),
  );
}

Widget _location() {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(hintText: "Location"),
    ),
  );
}

Widget _testimony() {
  return Container(
    margin: const EdgeInsets.only(top: 24),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Enter testimony",
        border: OutlineInputBorder(),
      ),
      maxLines: null,
    ),
  );
}

Widget _submitButton() {
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
        onPressed: () {
          print("clicked");
        },
        child: const Text("Submit"),
      ),
    ),
  );
}

class TestimonyTitle extends StatefulWidget {
  const TestimonyTitle({super.key});

  @override
  State<TestimonyTitle> createState() => _TestimonyTitleState();
}

class _TestimonyTitleState extends State<TestimonyTitle> {
  final List<String> items = [
    'Miraculous Healing',
    'Miraculous Delivery',
    'New Body Birth',
    'Marital Victory',
    'Total Deliverance',
    'Provision of New Job',
    'Victory Over Enemies',
  ];
  String selectedValue = 'Miraculous Healing';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: selectedValue,
      // Down Arrow Icon
      // icon: const Icon(Icons.keyboard_arrow_down),
      dropdownColor: blueColor,
      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
          print(selectedValue);
        });
      },
    );
  }
}

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  final List<String> items = [
    'Male',
    'Female',
  ];

  String selectedValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: selectedValue,
      // Down Arrow Icon
      // icon: const Icon(Icons.keyboard_arrow_down),
      dropdownColor: blueColor,
      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
          print(selectedValue);
        });
      },
    );
  }
}
