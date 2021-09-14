import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectWithUs extends StatelessWidget {
  ConnectWithUs({Key? key}) : super(key: key);

  final twitterURL = "https://twitter.com/Gideons_Promise";

  // _visitURL(url) async =>
  //     await canLaunch(url) ? await launch(url) : throw 'Unable to visit $url';

  final addressRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
      Text(
        "Address",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      Text(
          "Gideon's Promise\n101 Marietta Street NW\nSuite 250\nAtlanta, GA 30303",
          style: TextStyle(
            fontSize: 20,
          ))
    ],
  );

  final emailRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
      Text(
        "Email",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      Text("info@gideonspromise.org",
          style: TextStyle(
            fontSize: 20,
          ))
    ],
  );

  final phoneRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
      Text(
        "Phone",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      Text("(404) 525-4505",
          style: TextStyle(
            fontSize: 20,
          ))
    ],
  );

  final socialMediaRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        onPressed: () {
          print("Clicked FB");
        },
        icon: const FaIcon(FontAwesomeIcons.facebook),
        iconSize: 36,
      ),
      IconButton(
        onPressed: () {
          print("Clicked Twitter");
        },
        icon: const FaIcon(FontAwesomeIcons.twitter),
        iconSize: 36,
      ),
      IconButton(
        onPressed: () {
          print("Clicked IG");
        },
        icon: const FaIcon(FontAwesomeIcons.instagram),
        iconSize: 36,
      ),
      IconButton(
        onPressed: () {
          print("Clicked LinkedIn");
        },
        icon: const FaIcon(FontAwesomeIcons.linkedin),
        iconSize: 36,
      ),
      IconButton(
        onPressed: () {
          print("Clicked YT");
        },
        icon: const FaIcon(FontAwesomeIcons.youtube),
        iconSize: 36,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connect With Us"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: const Image(
              image: AssetImage("assets/GP_Logo.png"),
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: addressRow,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: phoneRow,
          ),
          emailRow,
          Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: const Text(
              "Follow Us!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          socialMediaRow,
        ],
      ),
    );
  }
}
