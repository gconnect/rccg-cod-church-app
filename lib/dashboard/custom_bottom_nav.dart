import 'package:flutter/material.dart';

import '../utils/constants.dart';


class CustomBottomNav extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNav({super.key, required this.currentIndex, required this.onTap});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: bodyBackgroundColor,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.menu_book_sharp),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.location_on),
            label: 'Near Me',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black45,
            icon: Icon(Icons.volunteer_activism_outlined),
            label: 'Donate',
          ),
        ],
        currentIndex: widget.currentIndex,
        selectedItemColor: Colors.purple[500],
        onTap: widget.onTap,
    );
  }
}
