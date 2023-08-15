import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/common_widgets/custom_button.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            TextColor: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
            text: 'Free',
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
            launchCustomUrl(context,bookModel.volumeInfo.previewLink);
            },
            fontsize: 16,
            backgroundColor: const Color(0xffEF8262),
            TextColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            text: getpreviewLink(bookModel)
          )),
        ],
      ),
    );
  }

  String getpreviewLink(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink ==null){
      return 'Not Available';
    }else {
      return 'Preview';
    }
  }
}
