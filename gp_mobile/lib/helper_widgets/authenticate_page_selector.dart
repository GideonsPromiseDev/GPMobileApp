import 'package:flutter/material.dart';
import 'package:gp_mobile/pages/login/login.dart';
import 'package:gp_mobile/pages/signup/signup.dart';

class AuthenticatePageSelector extends StatefulWidget {
  const AuthenticatePageSelector({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<AuthenticatePageSelector> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInScreen(toggleView: toggleView);
    } else {
      return SignUP(toggleView: toggleView);
    }
  }
}
