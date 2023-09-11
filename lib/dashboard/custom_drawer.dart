import 'package:flutter/material.dart';
import 'package:rccg_cod/dashboard/dashboard.dart';

import '../authentication/screen/login.dart';
import '../navdrawer_pages/about_us/about_us.dart';
import '../navdrawer_pages/books/books.dart';
import '../navdrawer_pages/devotionals/devotional.dart';
import '../navdrawer_pages/join_department/department/department.dart';
import '../navdrawer_pages/profile/profile.dart';
import '../navdrawer_pages/testimony/testimony.dart';
import '../utils/constants.dart';
import 'navbar_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.purple.shade900,
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
              icon: Icons.home,
              title: "Home",
              widget: Dashboard()),
          const NavbarItem(
              icon: Icons.person, title: "Profile", widget: Profile()),
          const NavbarItem(
              icon: Icons.comment, title: "Testimony", widget: Testimony()),
          const NavbarItem(
              icon: Icons.library_books, title: "Books", widget: Books()),
          const NavbarItem(
              icon: Icons.local_fire_department_outlined,
              title: "Devotionals",
              widget: Devotionals()),
          const NavbarItem(
              icon: Icons.add, title: "Join a department", widget: Department()),
          const NavbarItem(
              icon: Icons.info_outline,
              title: "About COD",
              widget: AboutUs()),
          const NavbarItem(
              icon: Icons.logout, title: "Logout", widget: LoginScreen()),
        ],
      ),
    );
  }
}
