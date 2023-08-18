import 'package:bookly/features/home/data/presentetion/views/widgets/search_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/presentetion/manager/search_books/search_featured_cubit.dart';
import 'package:bookly/views/widgets/custom_loading_indecator.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(onChanged: (query) {
            // Dispatch the search query to the cubit
            context.read<SearchFeaturedCubit>().fetchSearchFeaturedBooks(query: query);
          }),
          const SizedBox(
            height: 16,
          ),
          const Text('Search Result', style: Styles.textStyle18),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchFeaturedCubit, SearchFeaturedState>(
      builder: (context, state) {
        if (state is SearchFeaturedSuccess) {
          final books = state.books;

          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchBookDetailsSection(bookModel: book),
                    ),
                  );
                },
                child: SizedBox(
                  child: Card(
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                        fontSize: 18,
                       overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                      leading: Image.network(
                        book.volumeInfo.imageLinks?.thumbnail ?? '',
                        height: 100,
                      ),
                      title: Text(book.volumeInfo.title ?? 'No Title'),
                      subtitle: Text(book.volumeInfo.authors?.join(', ') ?? 'Unknown Author'),
                    ),
                  ),
                ),
              );
            },
          );
        } else if (state is SearchFeaturedFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
