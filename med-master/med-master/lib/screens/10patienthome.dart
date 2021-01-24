import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/customappbar.dart';
import 'package:mymed/screens/11makeAppoinment.dart';
import 'package:mymed/wedgits/customdrawer.dart';

class Patienthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(
        title: 'Your Appointment',
      ),
      drawer: Customdrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('assets/images/patienthome.png'),
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 130),
              child: Text(
                translator.translate('Noappoinment'),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MakeAppoinment();
          }));
        },
      ),
    );
  }
}
