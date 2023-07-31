import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/views/widgets/CustomBookImageItem.dart';
import 'package:bookly/views/widgets/book_rating_.dart';
import 'package:flutter/material.dart';

import '../../../../../views/widgets/Box_Action.dart';
import '../../../../../views/widgets/Similar_books_listview.dart';
import '../../../../../views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [

          SliverFillRemaining(
            hasScrollBody: false,
      child: Column(
      children: [
          const CustomBookDetailsAppBar(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.2),
        child: const CustomBookImage(),
      ),
      const SizedBox(
        height: 43,
      ),
      Text(
        'The Jungle Book',
        style: Styles.textStyle30.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Opacity(
        opacity: 0.7,
        child: Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      const SizedBox(
        height: 18,
      ),
      const BookRating(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      const SizedBox(
        height: 37,
      ),
      const BoxAction(),
      const Expanded(
        child: SizedBox(
          height: 30,
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text('You can also like ',style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600
        ),),
      ),
      const SizedBox(
        height: 16,
      ),
      const SimilarBooksListView(),

      ],
    ),
    ),
    ]
    )
    );


  }
}

