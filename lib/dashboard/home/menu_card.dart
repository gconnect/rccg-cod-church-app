import 'package:flutter/material.dart';
import 'package:googleapis/servicemanagement/v1.dart';
import 'package:googleapis/speech/v1.dart';
import 'package:rccg_cod/authentication/screen/login.dart';

class MenuCard extends StatelessWidget {
 final IconData menuIcon;
  final String text;
  final Widget action;
  const MenuCard({super.key, required this.menuIcon, required this.text, required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 180,
        height: 150,
        decoration: BoxDecoration(border: Border.all(color: Colors.purpleAccent), borderRadius: BorderRadius.circular(8)  ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(menuIcon, size: 36,),
            Padding(
              padding: const EdgeInsets.only(top: 10),
                child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))
          ],),
        ),
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) =>  action)));
  }
}