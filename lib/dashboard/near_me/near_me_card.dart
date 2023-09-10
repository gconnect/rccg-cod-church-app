import 'package:flutter/material.dart';

class NearMeCard extends StatefulWidget {
  final String name;
  final String address;
  final String phoneContact;
  final String image;

  const NearMeCard(
      {super.key,
      required this.name,
      required this.address,
      required this.phoneContact,
      required this.image});

  @override
  State<NearMeCard> createState() => _EventCardState();
}

class _EventCardState extends State<NearMeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            // margin: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Image(image: AssetImage(widget.image))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(top: 16, left: 0),
                                child: Text(
                                  widget.address,
                                  textAlign: TextAlign.left,
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Icon(Icons.phone, size: 16,),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Text(
                              widget.phoneContact,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.purple.shade500,
          )
        ],
      ),
    );
  }
}
