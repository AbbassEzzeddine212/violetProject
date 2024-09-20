import 'package:flutter/material.dart';


class btns extends StatelessWidget {
  const btns({
    super.key, required this.color, required this.text, this.onTap,
  });
  final Color color;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 70,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}