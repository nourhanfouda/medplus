import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/10patienthome.dart';
import 'package:mymed/screens/5login_register.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/loginwedgit.dart';
//import 'dart:js';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username;

  String password;
  Widget icon;

  var registerkey = GlobalKey<FormState>();

  saveform() {
    if (isAccepted) {
      bool validateresult = registerkey.currentState.validate();
      if (validateresult) {
        return true;
      } else
        return;
    }
  }

  saveusername(String value) {
    this.username = value;
  }

  savepassword(String value) {
    this.password = value;
  }

  String validateusername(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validatepassword(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else if (value.length < 6) {
      return ' paswword must be more than 6 chatachter';
    } else
      return null;
  }

  int groupValue;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                translator.translate("Login"),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
              child: Form(
                key: registerkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Loginwedgit(
                      label: translator.translate("username"),

                      icon:Icon (Icons.person),
                      save: saveusername,
                      validate: validateusername,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Loginwedgit(
                      label: translator.translate("Password"),
                      icon:Icon (Icons.lock),

                      save: savepassword,
                      validate: validatepassword,
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 250,
                      height: 60,
                      child: RaisedButton(
                          color:Theme.of(context).primaryColor.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            translator.translate("submit"),
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onPressed: () {
                            saveform();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Patienthome();
                            }));
                          }),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Welcome();
                            }));
                          },
                          child: Text(
                            translator.translate("Back"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w100),
                            textAlign: TextAlign.center,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
