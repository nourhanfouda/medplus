import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/8newclinicaccount.dart';
import 'package:mymed/screens/9newpatientaccount.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/custombtton.dart';

class CreateAccount extends StatelessWidget {
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
                    bottomRight: Radius.circular(80),),
                image: DecorationImage(
                    image: AssetImage("assets/images/logreg1.jpg"),
                    fit: BoxFit.cover)),
            width: double.infinity,
            height: 500,
            child: Center(
              child: Text(
                translator.translate("Creat Account"),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 80,
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
                CustomButton(
                  title: 'New Doctor',
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NewDoctor();
                    }));
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  title: 'New patient',
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Newpatient();
                    }));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


