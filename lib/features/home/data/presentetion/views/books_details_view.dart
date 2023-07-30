import 'package:flutter/material.dart';

import 'book_details_view_body.dart';

class BoxDetailsView extends StatelessWidget {
  const BoxDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(child: BookDetailsViewBody()) ,
    );
    //
    // const BookDetailsViewBody();
  }
}
