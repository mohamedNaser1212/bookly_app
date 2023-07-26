import 'package:flutter/material.dart';

import 'Custom_List_view_item.dart';

class FeaturedBookListview extends StatelessWidget {
  const FeaturedBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection:Axis.horizontal,

          itemBuilder: (context,index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}