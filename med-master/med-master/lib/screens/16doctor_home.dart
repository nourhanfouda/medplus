import 'package:flutter/material.dart';
import 'package:mymed/wedgits/customappbar.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../wedgits/doctordrawer.dart';

class Doctorhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Customappbar(
          title: translator.translate("home"),
        ),
        drawer: Doctordarwer(),
        body: Center(
          child: Stack(children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              //color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/dates.png'),
                      fit: BoxFit.contain)),
            ),
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 300, bottom: 20, right: 20, left: 20),
                child: Text(
                  translator.translate('doctorhome'),
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ));
  }
}
