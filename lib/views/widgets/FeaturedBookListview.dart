import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/presentetion/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/views/widgets/custom_error_message.dart';
import 'package:bookly/views/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'CustomBookImageItem.dart';

class FeaturedBookListview extends StatelessWidget {
  const FeaturedBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.KBookDetailsView,extra:state.books[index] );
                    },
                    child: CustomBookImage(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''),
                  ),
                );
              }),
        );
      } else if (state is FeaturedBooksFailure) {
        return Center(
          child: CustomErrorWidget(text: state.errMessage),
        );
      } else {
        return const Center(
          child: CustomLoadingIndicator(),
        );
      }
    });
  }
}
