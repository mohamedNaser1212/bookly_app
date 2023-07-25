import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class splashViewbody extends StatelessWidget {
  const splashViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Image.asset(AssetsData.logo),

      ],


    );
  }
}
