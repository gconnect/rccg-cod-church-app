import 'package:flutter/material.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'package:rccg_cod/utils/content_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(title: const Text("About Us"), backgroundColor: bodyBackgroundColor,),
      body:  SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image(image: AssetImage("assets/images/church.png"), width: double.infinity, fit: BoxFit.cover,),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("RCCG City of David-Eket", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 18,),
                  Text("25 Akurudum Street, Off Etebom, Afaha Uqua, Eket, Nigeria.",  style: TextStyle(fontSize: 18, height: 1.2 ), textAlign: TextAlign.center,),
              ],),
            ),

            Padding(
              padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
              child: Text(aboutUs, style: TextStyle(fontSize: 16, height: 1.8), textAlign: TextAlign.justify,),
            )
          ],),
        ),
      ),
    );
    
  }
}
