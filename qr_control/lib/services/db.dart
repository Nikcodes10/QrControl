import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DbService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String uid;

  DbService(this.uid);

  Future createUser(User user) {
    try {
      _firestore.collection('users').add({
        'email': user.email,
        'phNum': user.phoneNumber,
        'v-status': 'Not set',
        'Address': 'Not set',
        'status': 'Not Affected'
      });
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
