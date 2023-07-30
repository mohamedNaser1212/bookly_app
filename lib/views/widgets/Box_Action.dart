import 'package:flutter/material.dart';

import '../../core/common_widgets/custom_button.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                backgroundColor: Colors.white,
                TextColor: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(16)), text: '19,99 €',
              )),
          Expanded(
              child: CustomButton(
                fontsize: 16,
                backgroundColor: Color(0xffEF8262),
                TextColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)), text: 'Free Preview',

              )),
        ],
      ),
    );
  }
}
