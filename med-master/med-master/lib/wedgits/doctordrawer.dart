import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/screens/13userprofile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mymed/screens/17doctor_profile.dart';
import '../firebse_helper/server.dart';
import '../screens/12Aboutapp.dart';

class Doctordarwer extends StatelessWidget {
  contactus(String senderEmail, String reciverEmail, String emailTitle,
      String emailBody) async {
    Uri uri = Uri(
        scheme: 'mailto',
        path: reciverEmail,
        queryParameters: {'subject': emailTitle, 'body': emailBody});
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      print('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 50.0, left: 20, right: 20, bottom: 20),
        child: ListView(
          children: <Widget>[
            // UserAccountsDrawerHeader(
            //   accountName: Text(
            //     translator.translate('username'),
            //     style: TextStyle(color: Colors.black, fontSize: 20),
            //     textAlign: TextAlign.center,
            //   ),
            //   accountEmail: Text(
            //     translator.translate('Email'),
            //     style: TextStyle(color: Colors.black, fontSize: 20),
            //     textAlign: TextAlign.center,
            //   ),
            //   currentAccountPicture: CircleAvatar(
            //     child: Icon(Icons.person),
            //     backgroundColor: Colors.white,
            //     foregroundColor: Theme.of(context).primaryColor,
            //   ),
            //   decoration: BoxDecoration(
            //       color: Colors.purple,
            //       image: DecorationImage(
            //           alignment: Alignment.center,
            //           image: AssetImage("assets/images/logreg1.jpg"),
            //           fit: BoxFit.cover)),
            // ),
            ListTile(
              title: Text(translator.translate("profile"),
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              leading: Icon(Icons.person,
                  color: Theme.of(context).primaryColor, size: 25),
              contentPadding: EdgeInsets.all(10),
              dense: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DoctorProfile();
                }));
              },
            ),
            Divider(
              thickness: 0.5,
              endIndent: 20,
            ),
            ListTile(
              title: Text(translator.translate("language"),
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              leading: Icon(Icons.language,
                  color: Theme.of(context).primaryColor, size: 25),
              contentPadding: EdgeInsets.all(10),
              dense: true,
              onTap: () {
                translator.setNewLanguage(
                  context,
                  newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                  remember: true,
                  restart: true,
                );
              },
            ),
            Divider(
              thickness: 0.5,
              endIndent: 20,
            ),
            ListTile(
              title: Text(translator.translate("AboutApp"),
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              leading: Icon(Icons.info,
                  color: Theme.of(context).primaryColor, size: 25),
              contentPadding: EdgeInsets.all(10),
              dense: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AboutApp();
                }));
              },
            ),
            Divider(
              thickness: 0.5,
              endIndent: 20,
            ),
            ListTile(
              title: Text(translator.translate("Contactus"),
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              leading: Icon(Icons.phone,
                  color: Theme.of(context).primaryColor, size: 25),
              contentPadding: EdgeInsets.all(10),
              dense: true,
              onTap: () {
                contactus('', 'nourhanfouda97@gmail.com', '', '');
              },
            ),
            Divider(
              thickness: 0.5,
              endIndent: 20,
            ),
            ListTile(
              title: Text(translator.translate("Logout"),
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              leading: Icon(Icons.logout,
                  color: Theme.of(context).primaryColor, size: 25),
              contentPadding: EdgeInsets.all(10),
              dense: true,
              onTap: () async {
                signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
