import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';
import 'Box_Action.dart';
import 'CustomBookImageItem.dart';
import 'book_rating_.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child:  CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??'',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors![0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          Rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount  ??  0,
        ),
        const SizedBox(
          height: 18,
        ),

         BoxAction(
          bookModel: bookModel,
        ),

      ],
    );
  }
}