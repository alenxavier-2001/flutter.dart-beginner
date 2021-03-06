import 'dart:ffi';

import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final Void Function() buttonAction;
  final Color iconColor;

  CircularButton(
      {@required this.buttonIcon,
      @required this.buttonAction,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
