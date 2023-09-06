import 'package:flutter/cupertino.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24),
            child: const Text("Upcoming Events", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Row(
              children: [
                GestureDetector( child: Container(margin: const EdgeInsets.only(right: 24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: const Image(image:  AssetImage("assets/images/event.png"))),
                  onTap: () => {debugPrint("event")},
                ),
                GestureDetector( child: Container(margin: const EdgeInsets.only(right: 24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: const Image(image:  AssetImage("assets/images/event.png"))),
                  onTap: () => {},
                ),
                GestureDetector( child: Container(margin: const EdgeInsets.only(right: 24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: const Image(image:  AssetImage("assets/images/event.png"))),
                  onTap: () => {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
