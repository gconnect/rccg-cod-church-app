import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/home/home.dart';
import 'package:rccg_cod/utils/constants.dart';

class Devotionals extends StatelessWidget {
  const Devotionals({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          height: 200,
          margin: const EdgeInsets.all(24),
          decoration: BoxDecoration(border: Border.all(color: Colors.purpleAccent), borderRadius: BorderRadius.circular(8)  ),
          child:  Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(border: Border(
                    right: BorderSide(
                    color: Colors.purpleAccent, // Specify the color of the border
                      width: 2.0,
                      // Specify the width of the border
                    )),
                ),
                  child:const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("27", style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("September", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                ),
                  ),),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not Ordinary Hands", style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      // Text("I will therefore that men pray everywhere, lifting up holy hands, without wrath and doubting.",
                      //   softWrap: true),
                      SizedBox(height: 10,),
                      Text("(1st Timothy 2:8 KJV..."),
                    ],
                  ),
                ),
              ],),
          ),
        ),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => const HomePage())));
  }
}
