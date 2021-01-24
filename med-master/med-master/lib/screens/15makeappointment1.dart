import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/wedgits/customappbar.dart';
import 'package:mymed/wedgits/customdrawer.dart';
import 'package:mymed/wedgits/userclinicwedgit.dart';

class Clinicmakeappointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(
        title: translator.translate('bookappointment'),
      ),
      drawer: Customdrawer(),
      body: UserClinicWedgit(),
    );
  }
}
