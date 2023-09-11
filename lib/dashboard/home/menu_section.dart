import 'package:flutter/material.dart';
import 'package:rccg_cod/authentication/recover_password.dart/recover_password_email_input.dart';
import 'package:rccg_cod/dashboard/donate/donate.dart';
import 'package:rccg_cod/dashboard/home/menu_card.dart';
import 'package:rccg_cod/dashboard/near_me/near_me.dart';
import 'package:rccg_cod/navdrawer_pages/books/books.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.all(24),
        child: const Row(
          children: [
            MenuCard(menuIcon: Icons.volunteer_activism_outlined, text: "Donate Online",
            action: Donate()),
            SizedBox(
              width: 20,
            ),
            MenuCard(menuIcon: Icons.location_on, text: "Near Me",
            action:  NearMe()),
            SizedBox(
              width: 20,
            ),
            MenuCard(menuIcon: Icons.library_books_outlined, text: "Books",
            action:  Books()),
          ],
        ),
      ),
    );
  }
}
