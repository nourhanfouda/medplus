import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class CustomButton extends StatelessWidget {
  CustomButton({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);
  String title;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 200,
        height: 120,
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90),),
          onPressed: onPressed,
          child: Text(
            translator.translate(title),
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}