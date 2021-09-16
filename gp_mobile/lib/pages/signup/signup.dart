import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_database/firebase_database.dart'
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class SignUP extends StatelessWidget {
  late String _email, _password, _fullName, _mobileNumber, _classYear, _partType, _address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/GP_Logo.png"),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("SIGN UP",
                          style: TextStyle(
                            color: Color(0xFFFFBD73),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _fullName = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Full Name",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.calendar_today,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _classYear = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Class Year",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.account_tree,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _partType = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Member Participant Type",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.map,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _address = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Office Address",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.phone,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _mobileNumber = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Mobile Number",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.alternate_email,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _email = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Email Address",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            _password = value;
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Container(
                      color: Color(0xFFFFBD73),
                      margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
                      width: double.infinity,
                      height: 40.0,
                      child: Center(
                        child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ),
                    onTap: () async {
                      print("I AM WORKINGO");
                      UserCredential user = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _email, password: _password);
                      if (user != null) {
                        print("I AM WORKING");
                        print(FirebaseAuth.instance.currentUser!.uid);
                       await FirebaseFirestore.instance.collection('Users').doc(FirebaseAuth.instance.currentUser!.uid).set({
                          'FullName':_fullName,
                          'MobileNumber':_mobileNumber,
                          'Email':_email,
                          'Address': _address,
                          'ClassYear': _classYear,
                          'MemberType' : _partType
                        });

                        print("DONE WITH FIRESTORE");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SignInScreen();
                          }),
                        );
                      } else {
                        print('user does not exist');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
