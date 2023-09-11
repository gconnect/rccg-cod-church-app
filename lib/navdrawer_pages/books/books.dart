import 'package:flutter/material.dart';
import 'package:rccg_cod/navdrawer_pages/books/book_card.dart';
import 'package:rccg_cod/utils/constants.dart';
import 'book_datasource.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
        backgroundColor: bodyBackgroundColor,
      ),
      backgroundColor: bodyBackgroundColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (value) {
                // Handle search text changes here
                print('Search text: $value');
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                // crossAxisSpacing: 10.0, // Spacing between columns
                mainAxisSpacing: 10.0, // Spacing between rows
              ),

              itemCount: books.length, // Number of items in the grid
              itemBuilder: (BuildContext context, int index) {
                // You can return any widget for each grid item
                return BookCard(name: books[index].name, image: books[index].image);
              },
            ),
          )
        ],
      ),
    );
  }
}
