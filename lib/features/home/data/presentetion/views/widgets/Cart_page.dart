import 'package:flutter/material.dart';

import '../../../../../../views/widgets/CustomBookImageItem.dart';
import '../../../models/book_model/book_model.dart';

class CartPageView extends StatelessWidget {
  final BookModel selectedBook; // Replace with your book model class

  const CartPageView({required this.selectedBook, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              CustomBookImage(
                imageUrl: selectedBook.volumeInfo.imageLinks?.thumbnail ?? '',
              ),

              const SizedBox(height: 10),
              Text(
                selectedBook.volumeInfo.title!, // Display the book's title
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement your purchase logic here
                },
                child: const Text('Purchase'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
