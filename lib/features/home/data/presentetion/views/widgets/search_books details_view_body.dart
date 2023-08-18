import 'package:bookly/features/home/data/presentetion/views/widgets/search_details_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../views/widgets/Similar_Books_Section.dart';
import '../../../../../../views/widgets/custom_book_details_appbar.dart';
import '../../../models/book_model/book_model.dart';



class SearchBookDetailsViewBody extends StatelessWidget {
  const SearchBookDetailsViewBody({super.key,required this.bookModel});
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
                  CustomBookDetailsAppBar(
                    bookModel: bookModel,
                  ),
                SearchBookDetailsSection(
                  bookModel:bookModel ,
                ),
                const   Expanded(
                  child: SizedBox(
                    height: 27,
                  ),
                ),

                const Expanded(child: SimilarBooksSection()),
               
              ],
            ),
          ),
        ]));
  }
}
