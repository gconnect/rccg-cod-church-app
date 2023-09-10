import 'package:flutter/material.dart';

class ProfilePix extends StatelessWidget {
  const ProfilePix({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          margin: const EdgeInsets.only(top:24),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    color: Colors.purple.shade900,
                    // Specify the border color
                    width: 2.0, // Specify the border width
                  )),
              child: const Stack(
                children: [
                  CircleAvatar(
                    radius: 70.0, // Adjust the radius as needed
                    backgroundImage: AssetImage(
                        'assets/images/logo.png'), // Provide the image path
                  ),
                  Positioned(
                      top: 50,
                      left: 50,
                      child: Icon(Icons.camera_alt_outlined, size: 36,)
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Wisdom Umanah")

          ],),
        );
  }
}
