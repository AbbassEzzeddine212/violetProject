import 'package:flutter/material.dart';
import 'package:payments_application/Colors/colors.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
            height: 90,
            width: 80,
            child: Image(image: AssetImage('assets/violet LOGO (1).png'))),
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: MyColors.customColor,
                  size: 50,
                )),
            Positioned(
              top: 20,
              left: 15,
              child: Container(
                  height: 14,
                  width: 14,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                      child: Text(
                    "3",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ))),
            ),
          ],
        )
      ],
    );
  }
}
