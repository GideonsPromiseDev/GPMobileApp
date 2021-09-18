import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_mobile/pages/connect_with_us/constants.dart';
import 'package:gp_mobile/pages/donate/constants.dart';
import 'package:gp_mobile/utils/url_launcher.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Donate"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60, bottom: 40),
            child: const Image(
              image: AssetImage("assets/GP_Logo.png"),
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
          ),
          IconButton(
            onPressed: () {
              openURL(DonateConstants.donateURL);
            },
            icon: const FaIcon(FontAwesomeIcons.moneyCheckAlt),
            iconSize: 36,
          ),
          const Text("Click here to donate"),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: const Text(
              "Please consider donating. Every little bit helps!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
