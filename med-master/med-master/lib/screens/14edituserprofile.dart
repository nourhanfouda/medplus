import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/loginwedgit.dart';
import 'package:string_validator/string_validator.dart';
import 'package:mymed/screens/13userprofile.dart';

class Edituserprofile extends StatefulWidget {
  @override
  _EdituserprofileState createState() => _EdituserprofileState();
}

class _EdituserprofileState extends State<Edituserprofile> {
  String username;
  String email;
  String password;
  String mobile;

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

  savedusername(String value) {
    this.email = value;
  }

  saveemail(String value) {
    this.email = value;
  }

  savepassword(String value) {
    this.password = value;
  }

  savemobile(String value) {
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

  String validatemobile(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validateemail(String value) {
    if (value.isEmpty) {
      return '*required';
    } else if (!isEmail(value)) {
      return 'incorrect Email pattern ';
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
              padding: EdgeInsets.only(top: 50),
              child: Text(
                translator.translate("Edituserprofile"),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
                child: Icon(Icons.camera_alt),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Form(
                key: registerkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Loginwedgit(
                      label: translator.translate("Email"),
                      save: saveemail,
                      validate: validateemail,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("username"),
                      save: savedusername,
                      validate: validateusername,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("Password"),
                      save: savepassword,
                      validate: validatepassword,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("mobile"),
                      save: savemobile,
                      validate: validatemobile,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 250,
                      height: 60,
                      child: RaisedButton(
                          color: Theme.of(context).primaryColor.withOpacity(0.4),
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
                              return UserProfile();
                            }));
                          }),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return UserProfile();
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
