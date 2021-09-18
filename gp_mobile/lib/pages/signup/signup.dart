import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_mobile/services/firebase_authenticator.dart';

class SignUP extends StatefulWidget {
  final Function toggleView;

  const SignUP({Key? key, required this.toggleView}) : super(key: key);

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  late String _email,
      _password,
      _firstName,
      _lastName,
      _mobileNumber,
      _classYear,
      _memberType,
      _address;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const gold = Color(0xFFFFBD73);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.longArrowAltLeft),
                    color: gold,
                    iconSize: 32,
                    onPressed: () {
                      widget.toggleView();
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/GP_Logo.png"),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text("SIGN UP",
                              style: TextStyle(
                                color: gold,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.person,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a first name';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _firstName = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "First Name",
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.person,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a last name';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _lastName = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Last Name",
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.calendar_today,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a class year';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _classYear = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Class Year",
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.account_tree,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a member participation type';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _memberType = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Member Participant Type",
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.map,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an office address';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _address = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Office Address",
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.phone,
                              color: gold,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a mobile number';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                _mobileNumber = value;
                              },
                              decoration: const InputDecoration(
                                hintText: "Mobile Number",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
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
                      const Spacer(),
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
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
                          )
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
                            child: Text('Sign Up',
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
                              await FirebaseAuthenticator().registerUser(
                                  email: _email,
                                  password: _password,
                                  firstName: _firstName,
                                  lastName: _lastName,
                                  phoneNumber: _mobileNumber,
                                  officeAddress: _address,
                                  classYear: _classYear,
                                  memberType: _memberType);
                              // widget.toggleView();
                            } on FirebaseAuthException catch (e) {
                              String errorMessage =
                                  "An error has occurred. Please try again later";

                              if (e.code == "email-already-in-use") {
                                errorMessage =
                                    'This email is already being used. Please try again';
                              } else if (e.code == 'invalid-email') {
                                errorMessage =
                                    'Provided email or password is invalid. Please try again';
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
