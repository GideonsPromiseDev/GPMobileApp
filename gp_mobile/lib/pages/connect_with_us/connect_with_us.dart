import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_mobile/pages/connect_with_us/constants.dart';
import 'package:gp_mobile/utils/url_launcher.dart';

class ConnectWithUs extends StatelessWidget {
  ConnectWithUs({Key? key}) : super(key: key);

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
            fontSize: 18,
          ))
    ],
  );

  final emailRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        "Email",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
        onPressed: () {
          openURL(ContactUsConstants.gpEmail);
        },
        child: const Text("info@gideonspromise.org"),
      )
    ],
  );

  final phoneRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        "Phone",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
        onPressed: () {
          openURL(ContactUsConstants.gpTelephone);
        },
        child: const Text("(404) 525-4505"),
      )
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
            margin: const EdgeInsets.only(top: 60, bottom: 40),
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
            child: emailRow,
          ),
          phoneRow,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  openURL(SocialMediaConstants.facebookURL);
                },
                icon: const FaIcon(FontAwesomeIcons.facebook),
                iconSize: 36,
              ),
              IconButton(
                onPressed: () {
                  openURL(SocialMediaConstants.twitterURL);
                },
                icon: const FaIcon(FontAwesomeIcons.twitter),
                iconSize: 36,
              ),
              IconButton(
                onPressed: () {
                  openURL(SocialMediaConstants.instagramURL);
                },
                icon: const FaIcon(FontAwesomeIcons.instagram),
                iconSize: 36,
              ),
              IconButton(
                onPressed: () {
                  openURL(SocialMediaConstants.linkedinURL);
                },
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                iconSize: 36,
              ),
              IconButton(
                onPressed: () {
                  openURL(SocialMediaConstants.youtubeURL);
                },
                icon: const FaIcon(FontAwesomeIcons.youtube),
                iconSize: 36,
              ),
            ],
          )
        ],
      ),
    );
  }
}
