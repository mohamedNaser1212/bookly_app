import 'package:bookly/features/home/data/presentetion/manager/newset_books/newest_books_cubit.dart';
import 'package:bookly/views/widgets/custom_error_message.dart';
import 'package:bookly/views/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is  NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            // shrinkWrap: true,//to solve the problem of the sliver //it removed because we add Sliverfillremaining
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,

              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10.0),
                  child: BestSellerListViewItem(
                    bookModel:state.books[index] ,
                  ),
                );
              });
        }else if(state is NewestBooksFailure){
          return  CustomErrorWidget(text: state.errMessage);
        }else{
          return const CustomLoadingIndicator();

        }
      },
    );
  }
}
