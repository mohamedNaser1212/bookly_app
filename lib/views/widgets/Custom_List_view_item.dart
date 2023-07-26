import 'package:flutter/material.dart';

import '../../core/utils/assets.dart';

class CustomlistViewItem extends StatelessWidget {
  const CustomlistViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4, //raatio of the width with respect to height
        child: Container(

          // width: MediaQuery.of(context).size.width*0.3,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,

            image: const DecorationImage(
              fit: BoxFit.fill
              ,image: AssetImage(AssetsData.test_image,

            ),

            ),
          ),
        ),
      ),
    );
  }
}
