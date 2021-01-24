import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../utiles/colors.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            translator.translate('AboutApp'),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " MED+",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center,
                      )
                    ]))));
  }
}
