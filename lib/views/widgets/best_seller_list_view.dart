import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:MediaQuery.of(context).size.width*0.5,
                // height: 120,
                child:  Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(
                      fontFamily:kGtSectraFine
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, //dots when the text take long space
                ),

              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14
                //dots when the text take long space
              ),
              const SizedBox(
                width: 3,
              ),
              Row(
                children: [
                  Text('19,99 € ',style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                  ),)

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
