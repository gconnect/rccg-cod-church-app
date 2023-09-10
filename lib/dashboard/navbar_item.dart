import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../navdrawer_pages/books/books.dart';

class NavbarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget widget;
  const NavbarItem({super.key, required this.icon, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
      Navigator.push(context,
            MaterialPageRoute(builder: (builder) => widget)),
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 50,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade900),
          child: Row(children: [
          const SizedBox(width: 10,),
          Icon(icon),
          const SizedBox(width: 10,),
          Text(title, style: const TextStyle(fontSize: 16)),
        ],),),
      ),
    );
  }
}
