import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/firebse_helper/server.dart';
import 'package:mymed/models/doctor_model.dart';
import 'package:mymed/screens/5login_register.dart';
import 'package:mymed/wedgits/loginwedgit.dart';
import 'package:string_validator/string_validator.dart';

import '../firebse_helper/repositories.dart';
import '../models/doctor_model.dart';

class NewDoctor extends StatefulWidget {
  @override
  _NewDoctorState createState() => _NewDoctorState();
}

class _NewDoctorState extends State<NewDoctor> {
  String clinicname;
  String doctorname;
  String email;
  String password;
  String address;
  String spacialist;
  String mobile;

  var registerkey = GlobalKey<FormState>();
  DoctorModel doctorModel = DoctorModel();

  saveform() async {
    bool validateresult = registerkey.currentState.validate();

    if (validateresult) {
      registerkey.currentState.save();
      await registerUsingEmailAndPassword(
          doctorModel.email, doctorModel.password);
      await insertNewDoctor(doctorModel);
    } else
      return;
  }

  saveclinicname(String value) {
    clinicname = value;
    doctorModel.clinicName = clinicname;
  }

  savedoctorname(String value) {
    doctorname = value;
    doctorModel.name = doctorname;
  }

  saveemail(String value) {
    email = value;
    doctorModel.email = email;
  }

  savepassword(String value) {
    password = value;
    doctorModel.password = password;
  }

  savespacialist(String value) {
    spacialist = value;
    doctorModel.spicalist = spacialist;
  }

  saveaddress(String value) {
    address = value;
    doctorModel.clinicAddress = address;
  }
  savemobile(String value) {
    mobile = value;
    doctorModel.mobile = mobile;
  }


  String validateclinicname(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validatedoctorname(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validatespacialist(String value) {
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

  String validateemail(String value) {
    if (value.isEmpty) {
      return '*required';
    } else if (!isEmail(value)) {
      return 'incorrect Email pattern ';
    } else
      return null;
  }

  String validateaddress(String value) {
    if (value.isEmpty) {
      return '*required';
    } else
      return null;
  }

  String validatemobile(String value) {
    if (value.toString().isEmpty) {
      return '*required';
    } else
      return null;
  }

  int groupValue;


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
                translator.translate("New Doctor"),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 60,
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
                      label: translator.translate("doctorname"),
                      icon: Icon(Icons.person),
                      save: savedoctorname,
                      validate: validatedoctorname,
                      keyboardType: TextInputType.name,
                      secure: false,
                    ),

                    Loginwedgit(
                      label: translator.translate("Clinic Name"),
                      icon: Icon(Icons.drive_file_rename_outline),
                      save: saveclinicname,
                      validate: validateclinicname,
                      keyboardType: TextInputType.name,
                      secure: false,
                    ),

                    Loginwedgit(
                      label: translator.translate("Email"),
                      icon: Icon(Icons.email),
                      save: saveemail,
                      validate: validateemail,
                      keyboardType: TextInputType.emailAddress,
                      secure: false,
                    ),


                    Loginwedgit(
                      label: translator.translate("Password"),
                      icon: Icon(Icons.lock),
                      save: savepassword,
                      validate: validatepassword,
                      keyboardType: TextInputType.visiblePassword,
                      secure: true,
                    ),

                    Loginwedgit(
                      label: translator.translate("spicaliset"),
                      icon: Icon(Icons.receipt_long),
                      save: savespacialist,
                      validate: validatespacialist,
                      keyboardType: TextInputType.text,
                      secure: false,
                    ),

                    Loginwedgit(
                      label: translator.translate("address"),
                      icon: Icon(Icons.location_on),
                      save: saveaddress,
                      validate: validateaddress,
                      keyboardType: TextInputType.streetAddress,
                      secure: false,
                    ),
                    Loginwedgit(
                      label: translator.translate("mobile"),
                      icon: Icon(Icons.phone),
                      save: savemobile,
                      validate: validatemobile,
                      keyboardType: TextInputType.phone,
                      secure: false,
                    ),

                    Container(
                      width: 250,
                      height: 60,
                      child: RaisedButton(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            translator.translate("submit"),
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onPressed: () async {
                            saveform();

                            print(doctorModel.email);
                          }),
                    ),
                    SizedBox(height: 30),
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
