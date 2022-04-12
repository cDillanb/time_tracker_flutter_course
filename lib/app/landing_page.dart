import 'package:flutter/material.dart';
import 'sign_in/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  User? _user;

  void _updateUser(User user) {
    setState(() {
      _user = user;
    });
    print('User id ${user.uid}');
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        onSignIn: _updateUser,
      );
    }
    return HomePage();
  }
}
