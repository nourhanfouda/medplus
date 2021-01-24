import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctorapoointemt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 9,
              spreadRadius: 5,
              offset: Offset(0, 0.9),
            )
          ],
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
