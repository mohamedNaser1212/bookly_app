import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,style:Styles.textStyle18,
        textAlign: TextAlign.center,
   ),
    );
  }
}
