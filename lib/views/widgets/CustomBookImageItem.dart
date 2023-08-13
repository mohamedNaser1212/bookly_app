import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4, //ratio of the width with respect to height
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
