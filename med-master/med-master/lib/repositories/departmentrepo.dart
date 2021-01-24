import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/models/departmentsmodel.dart';

List<String> departmentstatus = [
  translator.translate('internalmedicine'),
  translator.translate('Obstetricandgynecology'),
  translator.translate('ophthalmology'),
  translator.translate('Cardiology'),
  translator.translate('Neurology'),
  translator.translate('generalsurgery'),
  translator.translate('Dermatlolgy'),
  translator.translate('ENT'),
  translator.translate('pediatric'),
  translator.translate('Orthopedic'),
  translator.translate('Physiotherapy'),
  translator.translate('Nutrition')
];

List<Depatrmentmodel> departments = [
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('internalmedicine'),
      status: departmentstatus[0]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Obstetricandgynecology'),
      status: departmentstatus[1]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('ophthalmology'),
      status: departmentstatus[2]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Cardiology'),
      status: departmentstatus[3]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Neurology'),
      status: departmentstatus[4]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('generalsurgery'),
      status: departmentstatus[5]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Dermatlolgy'),
      status: departmentstatus[6]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('ENT'),
      status: departmentstatus[7]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('pediatric'),
      status: departmentstatus[8]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Orthopedic'),
      status: departmentstatus[9]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Physiotherapy'),
      status: departmentstatus[10]),
  Depatrmentmodel(
      imageurl: 'assets/images/department.png',
      depatrmentname: translator.translate('Nutrition'),
      status: departmentstatus[11]),
];
