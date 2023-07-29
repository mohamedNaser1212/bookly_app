import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'FeaturedBookListview.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListview(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Styles.textStyle18),
          // Text('Best Seller', style: Styles.titleMedium.copyWith(
          //   fontSize: 64
          // )), another way to alter the custom styles
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

