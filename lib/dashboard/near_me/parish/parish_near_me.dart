import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/near_me/near_me_card.dart';
import 'package:rccg_cod/dashboard/near_me/parish/parish_detail.dart';

import '../near_me_data_source.dart';

class ParishNearMe extends StatelessWidget {
  const ParishNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
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
        ),
        Expanded(
          child: ListView.builder(
            itemCount: nearMeList.length,
            itemBuilder: (
                BuildContext context, int index) =>
                GestureDetector(
                  child: NearMeCard(name: nearMeList[index].name,
                      address: nearMeList[index].address,
                      phoneContact: nearMeList[index].phoneContact,
                      image: nearMeList[index].image),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => NearMeDetail(nearMe: nearMeList[index]))),
                ),
          ),
        ),
      ],
    );
  }
}
