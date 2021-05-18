import 'package:flutter/material.dart';
import 'package:qr_control/screens/contacts.dart';
import 'package:qr_control/screens/profile.dart';
import 'package:qr_control/screens/scanner.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Widget profile = Profile();
  final Widget homeView = Contacts();
  final Widget scanner = QrScanner();

  Widget myWidget = Contacts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget,
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: TextButton(
              onPressed: () {
                setState(() {
                  myWidget = homeView;
                });
              },
              child: Text("home"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: TextButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("vieq qr"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: TextButton(
              onPressed: () {
                setState(() {
                  myWidget = scanner;
                });
              },
              child: Text("scan qr"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: TextButton(
              onPressed: () {
                setState(() {
                  myWidget = profile;
                });
              },
              child: Text("profile"),
            ),
          ),
        ],
      ),
    );
  }
}
