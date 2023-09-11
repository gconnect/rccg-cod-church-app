import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/join_department/department/department_data_source.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/testimony_card.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/testimony_data_source.dart';
import 'package:rccg_cod/navdrawer_pages/testimony/view_testimony/testimony_detail.dart';
import 'package:rccg_cod/utils/constants.dart';

import 'department_card.dart';
import 'department_detail.dart';

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(title: const Text("Department"), backgroundColor: bodyBackgroundColor,),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (value) {
                // Handle search text changes here
                print('Search text: $value');
              },
            ),
            const SizedBox(height: 24.0,),
            Expanded(
              child: ListView.builder(
                  itemCount: departments.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>
                                      DepartmentDetail(department: departments[index])))
                        },
                        child: DepartmentCard(
                            name: departments[index].name,
                            description: departments[index].description,
                            ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
