import 'package:flutter/material.dart';

import '../../../Colors/colors.dart';




class addPayments extends StatelessWidget {
   addPayments({
    super.key,
    this.onTap,
  });
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: MyColors.customColor,
            borderRadius: BorderRadius.circular(25)),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }
}