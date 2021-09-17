import 'package:flutter/material.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/pages/login/login.dart';
import 'package:gp_mobile/services/firebase_authenticator.dart';

class SignUP extends StatelessWidget {
  late String _email,
      _password,
      _firstName,
      _lastName,
      _mobileNumber,
      _classYear,
      _memberType,
      _address;

  SignUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/GP_Logo.png"),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 0.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
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
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                          color: Color(0xFFFFBD73),
                        ),
                      ),
                      Expanded(
                        child: TextField(
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
                      color: const Color(0xFFFFBD73),
                      margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      width: double.infinity,
                      height: 40.0,
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
                      SimpleUser? user = await FirebaseAuthenticator()
                          .registerUser(
                              email: _email,
                              password: _password,
                              firstName: _firstName,
                              lastName: _lastName,
                              phoneNumber: _mobileNumber,
                              officeAddress: _address,
                              classYear: _classYear,
                              memberType: _memberType);
                      if (user != null) {
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
