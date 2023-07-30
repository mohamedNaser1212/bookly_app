import 'package:bookly/views/widgets/CustomBookImageItem.dart';
import 'package:flutter/material.dart';

import '../../../../../views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends  StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.17),
            child:const CustomBookImage(),
          ),
        ],

      ),
    );
  }
}

