import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          color: Colors.teal[100],
          child: InkWell(
            onTap: () {
              print("Clicked view profile");
            },
            splashColor: Colors.grey,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Icon(
                        Icons.face,
                        color: Colors.green[500],
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
          color: Colors.teal[100],
          child: InkWell(
            onTap: () {
              print("Clicked chat");
            },
            splashColor: Colors.grey,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Icon(
                        Icons.forum,
                        color: Colors.green[500],
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
          color: Colors.teal[100],
          child: InkWell(
            onTap: () {
              print("Clicked donate");
            },
            splashColor: Colors.grey,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Icon(
                        Icons.payment,
                        color: Colors.green[500],
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
          color: Colors.teal[100],
          child: InkWell(
            onTap: () {
              print("Clicked connect with us");
            },
            splashColor: Colors.grey,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Icon(
                        Icons.group_add,
                        color: Colors.green[500],
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
