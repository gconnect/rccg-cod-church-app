import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/custom_bottom_nav.dart';
import 'package:rccg_cod/dashboard/donate/donate.dart';
import 'package:rccg_cod/dashboard/home/home.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'event/event.dart';
import 'mesage/message.dart';
import 'near_me/near_me.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Message(),
    Event(),
    NearMe(),
    Donate()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _closeDrawer() {
    Navigator.of(_scaffoldKey.currentContext!).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: _onItemTapped
      ),
      body: _widgetOptions[_currentIndex],
    );
  }
}
