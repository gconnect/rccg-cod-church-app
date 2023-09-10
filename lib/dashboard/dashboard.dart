import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/donate/donate.dart';
import 'package:rccg_cod/dashboard/home/home.dart';
import 'package:rccg_cod/dashboard/navbar_item.dart';
import 'package:rccg_cod/navdrawer_pages/devotionals/devotional.dart';
import 'package:rccg_cod/utils/constants.dart';
import '../navdrawer_pages/books/books.dart';
import '../navdrawer_pages/profile/profile.dart';
import 'event/event.dart';
import 'mesage/message.dart';
import 'near_me/near_me.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
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
      _selectedIndex = index;
    });
  }

  void _closeDrawer() {
    Navigator.of(_scaffoldKey.currentContext!).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        leading: const Icon(Icons.notifications),
        backgroundColor: bodyBackgroundColor,
        title: _selectedIndex == 0
            ? const Text("")
            : _selectedIndex == 1
                ? const Text("Message")
                : _selectedIndex == 2
                    ? const Text("Event")
                    : _selectedIndex == 3
                        ? const Text("Near Me")
                        : const Text("Donate"),
      ),
      endDrawer: Drawer(
        backgroundColor: bodyBackgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerHeader(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        color: Colors.purple.shade900,
                        // Specify the border color
                        width: 2.0, // Specify the border width
                      )),
                  child: const CircleAvatar(
                    radius: 70.0, // Adjust the radius as needed
                    backgroundImage: AssetImage(
                        'assets/images/logo.png'), // Provide the image path
                  ),
                )),
                Container(
                    margin: const EdgeInsets.only(left: 40, bottom: 24),
                    child: const Text("Wisdom Zyde",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)))
              ],
            ),
            const NavbarItem(
                icon: Icons.person, title: "Profile", widget: Profile()),
            const NavbarItem(
                icon: Icons.video_collection,
                title: "Gallery",
                widget: Profile()),
            const NavbarItem(
                icon: Icons.comment, title: "Testimony", widget: Profile()),
            const NavbarItem(
                icon: Icons.library_books, title: "Books", widget: Books()),
            const NavbarItem(
                icon: Icons.local_fire_department_outlined,
                title: "Devotionals",
                widget: Devotionals()),
            const NavbarItem(
                icon: Icons.add, title: "Join a department", widget: Profile()),
            const NavbarItem(
                icon: Icons.info_outline,
                title: "About COD",
                widget: Profile()),
            const NavbarItem(
                icon: Icons.logout, title: "Logout", widget: Profile()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bodyBackgroundColor,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Near Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volunteer_activism_outlined),
            label: 'Donate',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
