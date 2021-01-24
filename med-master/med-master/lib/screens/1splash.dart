import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/7createaccount.dart';
import 'package:mymed/utiles/colors.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Future.delayed(Duration(seconds: 3)).then((value) {

      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return CreateAccount();
      }));
    });
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: IconButton(
            icon: Icon(Icons.language),
            color: Colors.white,
            onPressed: () {
              translator.setNewLanguage(
                context,
                newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                remember: true,
                restart: true,
              );
            }),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
          //  alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          color:  Theme.of(context).primaryColor,
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
              ),

            ],
          )),
    );
  }
}
