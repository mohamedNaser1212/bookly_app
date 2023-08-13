import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style:Styles.textStyle18.copyWith(color: Colors.red)
   );
  }
}
