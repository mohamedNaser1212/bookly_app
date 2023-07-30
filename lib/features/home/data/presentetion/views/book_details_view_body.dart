import 'package:flutter/material.dart';

import '../../../../../views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends  StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],

      ),
    );
  }
}

