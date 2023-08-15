import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/similar_books_cubit/similar_books_cubit.dart';
import 'book_details_view_body.dart';

class BoxDetailsView extends StatefulWidget {
  const BoxDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BoxDetailsView> createState() => _BoxDetailsViewState();
}

class _BoxDetailsViewState extends State<BoxDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailsViewBody(
        bookModel:widget.bookModel,
      )),
    );
    //
    // const BookDetailsViewBody();
  }
}
