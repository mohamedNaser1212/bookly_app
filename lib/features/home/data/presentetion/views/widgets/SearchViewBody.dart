import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../views/widgets/best_seller_list_view_item.dart';
import '../../../../../../views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text('Search Result', style: Styles.textStyle18),
          Expanded(child: SearchResultListView()),
        
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,//to solve the problem of the sliver //it removed because we add Sliverfillremaining
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerListViewItem(),
          );
        });
  }
}
