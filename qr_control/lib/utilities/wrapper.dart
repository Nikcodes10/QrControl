import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_control/models/user.dart';
import 'package:qr_control/screens/home.dart';
import 'package:qr_control/screens/signup_email.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<ActiveUser>(context);
    if (user == null) {
      return SignupWithEmail();
    } else {
      print("${user.email} ${user.phNum}");
      return Home();
    }
    //return user == null ? Loading() : SignupWithEmail();
  }
}
