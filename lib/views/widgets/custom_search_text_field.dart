import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, this.onChanged});
 final  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onChanged ,
        decoration: InputDecoration(
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: 'Search',
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Opacity(
                  opacity: 0.8,
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 24,
                  ),
                )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ));
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.white
        ),
        borderRadius: BorderRadius.circular(12)

    );
  }
}
