import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/wedgits/clinicwedgit.dart';
import '../wedgits/customappbar.dart';
import '../wedgits/doctordrawer.dart';
import 'package:mymed/wedgits/doctor_addappointment.dart';

class DoctorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Customappbar(
          title: translator.translate('profile'),
        ),
        drawer: Doctordarwer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClinicWedgit(),
                Doctorapoointemt(),
              ],
            ),
          ],
        ));
  }
}
