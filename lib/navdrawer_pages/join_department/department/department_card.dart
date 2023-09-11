import 'package:flutter/material.dart';
import 'package:rccg_cod/utils/constants.dart';

class DepartmentCard extends StatefulWidget {
  final String name;
  final String description;


  const DepartmentCard(
      {super.key, required this.name,
      required this.description,});

  @override
  State<DepartmentCard> createState() => _DepartmentCardState();
}

class _DepartmentCardState extends State<DepartmentCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Icon(Icons.house_siding, size: 36,),
          const SizedBox(width: 20,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(widget.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), maxLines: 1,),
              const SizedBox(height: 10.0,),
              Text(widget.description, maxLines: 1, overflow: TextOverflow.ellipsis,)
            ],),
          )
          ],
        ),
        const Divider(color: Colors.purple,)
      ],
    );
  }
}
