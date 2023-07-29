import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'FeaturedBookListview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4, //ratio of the width with respect to height
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.test_image,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
           Column(
            children: [
              SizedBox(
                width:MediaQuery.of(context).size.width*0.5,
                // height: 120,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, //dots when the text take long space
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
