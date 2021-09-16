import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComingSoon extends StatelessWidget {
  final String pageTitle;
  const ComingSoon({Key? key, required this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitle),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: const Icon(
                  FontAwesomeIcons.clock,
                  size: 80,
                ),
              ),
            ),
            const Text(
              "This page is coming soon\nWe can't wait for you to see it!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ));
  }
}
