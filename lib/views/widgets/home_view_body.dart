import 'package:flutter/material.dart';

import 'Custom_List_view_item.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        CustomlistViewItem(),
      ],
    );
  }
}

