import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utiles/Styles.dart';

class ClinicWedgit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 9,
              spreadRadius: 5,
              offset: Offset(0, 0.9),
            )
          ],
          borderRadius: BorderRadius.circular(7)),
      child: Column(children: [
        Container(
          height: 100,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/doctor.jpg'),
                fit: BoxFit.contain),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Al-Shifaa Clinic',
              style: Style.clinicname,
            ),
            IconButton(icon: Icon(Icons.edit), onPressed: null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dr.Ahmed Ahmed',
              style: Style.doctorname,
            ),
            IconButton(icon: Icon(Icons.edit), onPressed: null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(Icons.star_rate),
                color: Colors.yellow[800],
                onPressed: null),
            IconButton(
                icon: Icon(Icons.star_rate),
                color: Colors.yellow[800],
                onPressed: null),
            IconButton(
                icon: Icon(Icons.star_rate),
                color: Colors.yellow[800],
                onPressed: null),
            IconButton(
                icon: Icon(Icons.star_rate),
                color: Colors.yellow[800],
                onPressed: null),
          ],
        ),
        FlatButton(
            onPressed: () {},
            child: Text(
              'Address',
              style: TextStyle(fontSize: 18),
            )),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Container(
            height: 70,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logreg1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
