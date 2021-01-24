import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/wedgits/customappbar.dart';
import 'package:mymed/wedgits/customdrawer.dart';
import 'package:mymed/repositories/departmentrepo.dart';
import 'package:mymed/wedgits/choosedepartmentwidget.dart';

class MakeAppoinment extends StatefulWidget {
  @override
  _MakeAppoinmentState createState() => _MakeAppoinmentState();
}

class _MakeAppoinmentState extends State<MakeAppoinment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(
        title: translator.translate('bookappointment'),
      ),
      drawer: Customdrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 25, right: 25),
            child: Text(
              translator.translate('choosedepartment'),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Container(
              width: double.infinity,
              height: 600,
              child: Expanded(
                  child: ListView.builder(
                itemCount: departments.length,
                itemBuilder: (context, index) {
                  return Choosedepartmentwedgit(departments[index]);
                },
              )),
            ),
            contentPadding: EdgeInsets.all(10),
            dense: true,
          ),
        ],
      ),
    );
  }
}
