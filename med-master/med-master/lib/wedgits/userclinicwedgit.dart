import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/Styles.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/clinicwedgit.dart';

class UserClinicWedgit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ClinicWedgit(),
        Container(
          width: 50,
          height: 110,
          padding: EdgeInsets.all(20),
          child: RaisedButton(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Theme.of(context).primaryColor)),
            color: Colors.white.withOpacity(0.8),
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(90)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return;
              }));
            },
            child: Text(
              translator.translate('bookappointment'),
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
