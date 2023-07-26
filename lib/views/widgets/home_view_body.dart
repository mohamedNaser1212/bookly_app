
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'FeaturedBookListview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListview(),
          const SizedBox(
            height: 50,
          ),
          Text('Best Seller',style: Styles.titleMedium),
        ],
      ),
    );
  }
}


