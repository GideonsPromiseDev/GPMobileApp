import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/pages/login/login.dart';
import 'package:gp_mobile/services/constants.dart';
import 'package:gp_mobile/themes/gideons_promise_colors.dart';
import 'package:gp_mobile/services/database.dart';
import 'package:gp_mobile/services/firebase_authenticator.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  ProfilePage createState() => ProfilePage();
}

scaffolding(String email, String mobile, String fullName, String classYear,
    String memberType, String address, BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: GideonsPromiseColors.blue,
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 110.0,
                  ),
                  const CircleAvatar(
                    radius: 65.0,
                    backgroundImage: AssetImage('assets/as.png'),
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(fullName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  )
                ]),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.grey[200],
                child: Center(
                    child: Card(
                        margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                        child: SizedBox(
                            width: 310.0,
                            height: 290.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Information",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey[300],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.blueAccent[400],
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Office Address",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            address,
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey[400],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.auto_awesome,
                                        color: Colors.yellowAccent[400],
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Hobbies",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey[400],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.pinkAccent[400],
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Interests",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey[400],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.people,
                                        color: Colors.lightGreen[400],
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Team",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey[400],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )))),
              ),
            ),
          ],
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 20.0,
            right: 20.0,
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Phone number',
                        style:
                            TextStyle(color: Colors.grey[400], fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        mobile,
                        style: const TextStyle(
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                  Column(children: [
                    Text(
                      'Class Year',
                      style: TextStyle(color: Colors.grey[400], fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      classYear,
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                    )
                  ]),
                  Column(
                    children: [
                      Text(
                        'Membership Type',
                        style:
                            TextStyle(color: Colors.grey[400], fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        memberType,
                        style: const TextStyle(
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, left: 20),
              child: IconButton(
                icon: const FaIcon(FontAwesomeIcons.longArrowAltLeft),
                iconSize: 32,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60, right: 20),
              child: TextButton(
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                onPressed: () async {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return SignInScreen();
                  }), (_) => false);
                  await FirebaseAuthenticator().signOut();
                },
              ),
            )
          ],
        )
      ],
    ),
  );
}

class ProfilePage extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final simpleUser = Provider.of<SimpleUser?>(context);

    Widget loadingProfile = scaffolding('loading', 'loading', 'loading',
        'loading', 'loading', 'loading', context);

    if (simpleUser == null) {
      return loadingProfile;
    }

    return FutureBuilder<DocumentSnapshot>(
      future: DatabaseService(uid: simpleUser.uid).getUserProfile(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError || (snapshot.hasData && !snapshot.data!.exists)) {
          return const Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> userProfile =
              snapshot.data!.data() as Map<String, dynamic>;
          String fullName = userProfile[UserProfileKeys.firstName] +
              " " +
              userProfile[UserProfileKeys.lastName];

          return scaffolding(
              userProfile[UserProfileKeys.email],
              userProfile[UserProfileKeys.phoneNumber],
              fullName,
              userProfile[UserProfileKeys.classYear],
              userProfile[UserProfileKeys.memberType],
              userProfile[UserProfileKeys.officeAddress],
              context);
        }

        return loadingProfile;
      },
    );
  }
}
