import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          color: GideonsPromiseColors.blue[100],
          child: InkWell(
            onTap: () {
              print("Clicked view profile");
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
          color: GideonsPromiseColors.blue[100],
          child: InkWell(
            onTap: () {
              print("Clicked chat");
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
          color: GideonsPromiseColors.blue[100],
          child: InkWell(
            onTap: () {
              print("Clicked donate");
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
          color: GideonsPromiseColors.blue[100],
          child: InkWell(
            onTap: () {
              print("Clicked connect with us");
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
