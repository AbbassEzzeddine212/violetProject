import 'package:flutter/material.dart';

import '../../../Colors/colors.dart';



class displayPaid extends StatelessWidget {
  const displayPaid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 110,
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(25)),
      child: const Center(
          child: Text(
            'Display paid',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}