import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mymed/models/doctor_model.dart';

import '../models/patient_model.dart';

Future insertNewDoctor(DoctorModel doctorModel) async {
  try {
    FirebaseFirestore.instance
        .collection('doctors')
        .add(
      {
        'name': doctorModel.name,
        'mobile': doctorModel.mobile,
        'ClinicName': doctorModel.clinicName,
        'clinicAddress': doctorModel.clinicAddress,
        'email': doctorModel.email,
        'spicalist': doctorModel.spicalist,
        'image': doctorModel.imgeurl,
        'status': doctorModel.status,
        'role': doctorModel.role = 'Doctor',

      },
    )
        .then((value) => print('done'))
        .catchError((error) => print("Failed to add user: $error"));
  } on Exception catch (e) {
    print(e);
  }
}

Future insertNewPatient(PatientModel patientModel) async {
  try {
    FirebaseFirestore.instance
        .collection('patients')
        .add(
      {
        'name': patientModel.name,
        'mobile': patientModel.mobile,
        'email': patientModel.email,
        'image': patientModel.imgeurl,
        'password': patientModel.password,
        'status': patientModel.status,
        'role': patientModel.role = 'Patient',
        'address': patientModel.address
      },
    )
        .then((value) => print('done'))
        .catchError((error) => print("Failed to add user: $error"));
  } on Exception catch (e) {
    print(e);
  }
}

// Future insertAdmin(PatientModel patientModel) async {
//   try {
//     FirebaseFirestore.instance
//         .collection('Admins')
//         .add(
//       {
//         'name': patientModel.name,
//         'mobile': patientModel.mobile,
//         'email': patientModel.email,
//         'image': patientModel.imgeurl,
//         'password': patientModel.password,
//         'status': patientModel.status,
//         'role': patientModel.role = 'Patient',
//         'address': patientModel.address
//       },
//     )
//         .then((value) => print('done'))
//         .catchError((error) => print("Failed to add user: $error"));
//   } on Exception catch (e) {
//     print(e);
//   }
// }

