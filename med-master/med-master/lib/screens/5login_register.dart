import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/screens/6login.dart';
import 'package:mymed/screens/7createaccount.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80)),
                image: DecorationImage(
                    image: AssetImage("assets/images/logreg1.jpg"),
                    fit: BoxFit.cover)),
            width: double.infinity,
            height: 500,
            child: Center(
              child: Text(
                " Med+",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 100,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 500,
            height: 150,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 120,
                    child: RaisedButton(
                      color:Theme.of(context).primaryColor.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                      child: Text(
                        translator.translate('Login'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 120,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return CreateAccount();
                        }));
                      },
                      child: Text(
                        translator.translate('Creat Account'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
