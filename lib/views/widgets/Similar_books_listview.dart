import 'package:bookly/features/home/data/presentetion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/views/widgets/custom_error_message.dart';
import 'package:bookly/views/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/data/presentetion/views/widgets/search_details_view.dart';
import 'CustomBookImageItem.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) {
                  return  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                     onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => SearchBookDetailsSection(bookModel: state.books[index]))
                    );
                     },

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: CustomBookImage(
                          imageUrl:state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''
                        ),
                      ),
                    ),
                  );
                }),
          );
        }else if (state is SimilarBooksFailure){
          return CustomErrorWidget(text: state.errMessage);

        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
