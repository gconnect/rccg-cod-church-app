import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/join_department/department/join_department.dart';
import 'package:rccg_cod/utils/constants.dart';

import 'department_data_source.dart';

class DepartmentDetail extends StatelessWidget {
  final DepartmentModel department;

  const DepartmentDetail({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(
        title: const Text("Department"),
        backgroundColor: bodyBackgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>{
          Navigator.push(context, MaterialPageRoute(builder: (builder) => const JoinDepartment() ))
        },
        tooltip: "Join Here",
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    department.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, height: 1.7),
                  )),
              Text(
                department.description,
                style: const TextStyle(fontSize: 16, height: 1.7),
                textAlign: TextAlign.justify,
              ),
              const Text("DAYS OF MEETINGS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, height: 1.7)),
              Row(
                children: [
                  const Text("Day:", style: TextStyle(height: 1.7)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(department.meetingDays,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, height: 1.7))
                ],
              ),
              Row(
                children: [
                  const Text("Time:", style: TextStyle(height: 1.7)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(department.meetingTime,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, height: 1.7))
                ],
              ),
              Row(
                children: [
                  const Text("Venue:", style: TextStyle(height: 1.7)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(department.meetingVenue,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, height: 1.7))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
