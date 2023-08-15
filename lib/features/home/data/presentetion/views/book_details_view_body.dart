import 'package:flutter/material.dart';

import '../../../../../views/widgets/Box_details_section.dart';
import '../../../../../views/widgets/Similar_Books_Section.dart';
import '../../../../../views/widgets/custom_book_details_appbar.dart';
import '../../models/book_model/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const  CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel:bookModel ,
                ),
                const   Expanded(
                  child: SizedBox(
                    height: 27,
                  ),
                ),

                const   SimilarBooksSection(),
                const    SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ]));
  }
}
