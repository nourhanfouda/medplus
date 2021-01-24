import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
Future<String> registerUsingEmailAndPassword(
    String email, String password) async {
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user.uid;
  } catch (e) {
    print(e);
    return null;
  }
}

loginUsingEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential =
    await auth.signInWithEmailAndPassword(email: email, password: password);

    return userCredential.user.uid;
  } catch (e) {
    print(e);
    return null;
  }
}

signOut() {
  auth.signOut();
}

String getUserId() {
  String id = auth.currentUser != null ? auth.currentUser.uid : null;
  print(id);
  return id;
}
