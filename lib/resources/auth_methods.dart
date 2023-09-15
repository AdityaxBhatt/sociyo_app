import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUPUser({
    required String name,
    required String username,
    required String email,
    required String password,
    // required Uint8List file
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty ||
          username.isNotEmpty ||
          password.isNotEmpty ||
          name.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'name': name,
          'username': username,
          'uid': cred.user!.uid,
          'email': email,
          'followers': [],
          'folowing': []
        });
        res = "success";
      }
    } catch (err) {
      res = err.toString();
    }
    print(res);
    return res;
  }
}
