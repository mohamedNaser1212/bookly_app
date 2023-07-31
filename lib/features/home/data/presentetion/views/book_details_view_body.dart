import 'package:flutter/material.dart';

import '../../../../../views/widgets/Box_details_section.dart';
import '../../../../../views/widgets/Similar_Books_Section.dart';
import '../../../../../views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 27,
                  ),
                ),
               
                SimilarBooksSection(),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ]));
  }
}
