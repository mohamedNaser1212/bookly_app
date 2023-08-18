import 'package:bookly/features/home/data/presentetion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/styles.dart';
import 'Similar_books_listview.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'You can also like ',
                style: Styles.textStyle14
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: SimilarBooksListView()),

            ],
          ),
        );
      },
    );
  }
}
