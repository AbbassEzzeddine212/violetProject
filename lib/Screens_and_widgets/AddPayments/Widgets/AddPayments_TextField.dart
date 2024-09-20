import 'package:flutter/material.dart';

import '../../../Colors/colors.dart';



class AddPyments_TextField extends StatelessWidget {
  const AddPyments_TextField({
    super.key, required this.labletext, this.suffixIcon, this.controller,this.maxLines,this.padding
  });
  final String labletext;
  final Widget? suffixIcon;
  final TextEditingController? controller;
 final int? maxLines ;
 final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: TextFormField(
          maxLines: maxLines,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: padding,
            suffixIcon: suffixIcon,
              labelStyle: TextStyle(color: Colors.black),
              labelText: labletext,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: MyColors.customColor, width: 3),
              ),
              border: OutlineInputBorder()),
        ));
  }
}