import 'package:flutter/material.dart';

import '../../../Colors/colors.dart';



class filterPayments extends StatelessWidget {
  const filterPayments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 125,
          height: 45,
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'dd/mm/yyyy'),
          ),
        ),
        const Icon(
          Icons.filter_alt_outlined,
          color: MyColors.primaryColor,
          size: 40,
        )
      ],
    );
  }
}