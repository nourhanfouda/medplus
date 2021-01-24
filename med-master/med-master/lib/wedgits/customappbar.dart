import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/colors.dart';

// ignore: must_be_immutable
class Customappbar extends StatelessWidget with PreferredSizeWidget {
  String title;
  Customappbar({this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        translator.translate(title),
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 8,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
