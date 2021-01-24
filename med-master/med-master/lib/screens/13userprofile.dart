import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/customappbar.dart';
import 'package:mymed/wedgits/customdrawer.dart';
import 'package:mymed/screens/14edituserprofile.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: mainappColor.withOpacity(0.5),
      appBar: Customappbar(
        title: translator.translate("profile"),
      ),
      drawer: Customdrawer(),
      body: Container(
        height: double.infinity,
        width: 500,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Container(
                  // color: Colors.white,
                  alignment: Alignment.topCenter,
                  width: 500,
                  height: 600,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 5,
                        offset: Offset(0, 0.7),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
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
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                translator.translate('Edituserprofile'),
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              ),
                              IconButton(
                                icon: Icon(Icons.edit),
                                color: Theme.of(context).primaryColor,
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Edituserprofile();
                                  }));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              title: Text(
                                translator.translate('FavClinics'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.start,
                              ),
                              leading: Icon(Icons.favorite_border,
                                  color: Theme.of(context).primaryColor, size: 25),
                              contentPadding: EdgeInsets.all(10),
                              dense: true,
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text(
                                translator.translate('AppointmentHistory'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.start,
                              ),
                              leading: Icon(Icons.paste_rounded,
                                  color: Theme.of(context).primaryColor, size: 25),
                              contentPadding: EdgeInsets.all(10),
                              dense: true,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
