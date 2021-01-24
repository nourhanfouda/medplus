import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymed/models/departmentsmodel.dart';
import 'package:mymed/screens/15makeappointment1.dart';

class Choosedepartmentwedgit extends StatefulWidget {
  Depatrmentmodel departments;
  Choosedepartmentwedgit(this.departments);

  @override
  _ChoosedepartmentwedgitState createState() => _ChoosedepartmentwedgitState();
}

class _ChoosedepartmentwedgitState extends State<Choosedepartmentwedgit> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white12,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.01),
                blurRadius: 5,
                spreadRadius: 5,
                offset: Offset(0, 0.7),
              )
            ],
            borderRadius: BorderRadius.circular(10)),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(widget.departments.imageurl),
                              fit: BoxFit.cover)),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.departments.depatrmentname,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Clinicmakeappointment();
                }));
              },
            )
          ],
        ));
  }
}
