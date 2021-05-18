import 'package:flutter/material.dart';
import 'package:qr_control/services/auth.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: TextButton(
                onPressed: () => AuthService().signOut(),
                child: Text("Sign out!")),
          ),
        )
      ],
    );
  }
}
