import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class JoinDepartment extends StatefulWidget {
  const JoinDepartment({super.key});

  @override
  State<JoinDepartment> createState() => _JoinDepartmentState();
}

class _JoinDepartmentState extends State<JoinDepartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(
        title: const Text("Join Department"),
        backgroundColor: bodyBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(18),
          child: Column(
            children: [
              const Baptized(),
              const OtherDepartment(),
              const Availability(),
              _whyJoin(),
              _comment(),
              const SizedBox(
                height: 18.0,
              ),

              _submitButton()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _whyJoin() {
  return Container(
    margin: EdgeInsets.only(top: 18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Why do you want to join this department?", style: TextStyle(fontSize: 16.0),),
        Container(
          margin: const EdgeInsets.only(top: 24),
          child:  const TextField(
            decoration:
                InputDecoration(hintText: "Type your response here",
                    border: OutlineInputBorder()
                ),
            maxLines: null,
          ),
        ),
      ],
    ),
  );
}

Widget _comment() {
  return Container(
    margin: EdgeInsets.only(top: 18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Comment ways you can improve the department?", style: TextStyle(fontSize: 16.0),),
        Container(
          margin: const EdgeInsets.only(top: 24),
          child:  const TextField(
            decoration:
            InputDecoration(hintText: "Type your response here",
                border: OutlineInputBorder()
            ),
            maxLines: null,
          ),
        ),
      ],
    ),
  );
}

class Baptized extends StatefulWidget {
  const Baptized({super.key});

  @override
  State<Baptized> createState() => _BaptizedState();
}

class _BaptizedState extends State<Baptized> {
  String? baptized;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Have you been baptized by water?",
          style: TextStyle(fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RadioListTile(
                title: const Text("Yes"),
                value: "yes",
                groupValue: baptized,
                onChanged: (value) {
                  setState(() {
                    baptized = value.toString();
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: const Text("No"),
                value: "no",
                groupValue: baptized,
                onChanged: (value) {
                  setState(() {
                    baptized = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OtherDepartment extends StatefulWidget {
  const OtherDepartment({super.key});

  @override
  State<OtherDepartment> createState() => _OtherDepartmentState();
}

class _OtherDepartmentState extends State<OtherDepartment> {
  String? otherDepartment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Are a worker in any other department?",
          style: TextStyle(fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RadioListTile(
                title: const Text("Yes"),
                value: "yes",
                groupValue: otherDepartment,
                onChanged: (value) {
                  setState(() {
                    otherDepartment = value.toString();
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: const Text("No"),
                value: "no",
                groupValue: otherDepartment,
                onChanged: (value) {
                  setState(() {
                    otherDepartment = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Availability extends StatefulWidget {
  const Availability({super.key});

  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {
  String? availability;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Would you be available to attend meetings?",
          style: TextStyle(fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RadioListTile(
                title: const Text("Yes"),
                value: "yes",
                groupValue: availability,
                onChanged: (value) {
                  setState(() {
                    availability = value.toString();
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: const Text("No"),
                value: "no",
                groupValue: availability,
                onChanged: (value) {
                  setState(() {
                    availability = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _submitButton() {
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor,
            fixedSize: const Size.fromHeight(50.0)
        ),

        onPressed: () {
          print("clicked");
        },
        child: const Text("Submit", style: TextStyle(fontSize: 18),),
      ),
    ),
  );
}