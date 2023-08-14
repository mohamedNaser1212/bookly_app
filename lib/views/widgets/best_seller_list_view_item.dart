import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/views/widgets/CustomBookImageItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';
import '../../core/utils/styles.dart';
import 'book_rating_.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '' ),

            const SizedBox(
              width: 30,
            ),

            //Expanded because the column is the parent of the row below i tell it to expand so the row also expands
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    // height: 120,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow
                          .ellipsis, //dots when the text take long space
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14
                      //dots when the text take long space
                      ),
                  const SizedBox(
                    width: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(
                         Rating:bookModel.volumeInfo.averageRating?? 0,
                         count: bookModel.volumeInfo.ratingsCount?? 0,


                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
