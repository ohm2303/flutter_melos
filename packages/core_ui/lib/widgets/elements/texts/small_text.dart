import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {

  final String title;
  final Color? color;
  final String? family;

  const SmallText({super.key, required this.title, this.color, this.family});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      title,
      style: TextStyle(
        color: color ?? Colors.black,
        fontFamily: family
      ),
    );
  }}