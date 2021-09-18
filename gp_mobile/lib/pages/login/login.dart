import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/pages/home/home.dart';
import 'package:gp_mobile/services/firebase_authenticator.dart';

class SignInScreen extends StatefulWidget {
  final Function toggleView;

  const SignInScreen({Key? key, required this.toggleView}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String _email, _password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const gold = Color(0xFFFFBD73);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        gold,
                      ),
                    ),
                    onPressed: () {
                      widget.toggleView();
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black45),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/GP_Logo.png"),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        "Welcome!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: gold,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      const Text("Please sign in",
                          style: TextStyle(
                            color: gold,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Icon(
                                Icons.alternate_email,
                                color: gold,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter an email';
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  _email = value;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Email Address",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.lock,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _password = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Password",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: Container(
                          color: gold,
                          margin: const EdgeInsets.only(top: 10.0),
                          width: double.infinity,
                          height: 80.0,
                          child: const Center(
                            child: Text('Login',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                )),
                          ),
                        ),
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              await FirebaseAuthenticator()
                                  .signInWithEmailAndPassword(
                                      context: context,
                                      email: _email,
                                      password: _password);
                            } on FirebaseAuthException catch (e) {
                              String errorMessage =
                                  "An error has occurred. Please try again later";

                              if (e.code == 'user-not-found') {
                                errorMessage =
                                    'Unable to find user. Please try again or sign up';
                              } else if (e.code == 'invalid-email' ||
                                  e.code == 'wrong-password') {
                                errorMessage =
                                    'Provided email or password is invalid. Please try again or sign up';
                              }
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(errorMessage)),
                              );
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
