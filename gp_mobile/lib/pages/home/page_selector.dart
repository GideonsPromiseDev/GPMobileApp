import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_mobile/pages/coming_soon/coming_soon.dart';
import 'package:gp_mobile/pages/connect_with_us/connect_with_us.dart';
import 'package:gp_mobile/pages/donate/donate.dart';
import 'package:gp_mobile/pages/profile/profile.dart';
import 'package:gp_mobile/themes/gideons_promise_colors.dart';

class PageSelector extends StatelessWidget {
  const PageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        Material(
          color: GideonsPromiseColorsComplementary.darkred[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const Profile();
                }),
              );
            },
            splashColor: GideonsPromiseColors.gray,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: const Icon(
                        Icons.face,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    const Text(
                      'View My Profile',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Material(
          color: GideonsPromiseColorsComplementary.teal[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const ComingSoon(
                    pageTitle: "Chat",
                  );
                }),
              );
            },
            splashColor: GideonsPromiseColors.gray,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: const Icon(
                        Icons.forum,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    const Text(
                      'Chat',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Material(
          color: GideonsPromiseColorsComplementary.bluepurple[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const Donate();
                }),
              );
            },
            splashColor: GideonsPromiseColors.gray,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: const Icon(
                        Icons.payment,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    const Text(
                      'Donate',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Material(
          color: GideonsPromiseColorsComplementary.purple[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ConnectWithUs();
                }),
              );
            },
            splashColor: GideonsPromiseColors.gray,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: const Icon(
                        Icons.group_add,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    const Text(
                      'Connect With Us!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
