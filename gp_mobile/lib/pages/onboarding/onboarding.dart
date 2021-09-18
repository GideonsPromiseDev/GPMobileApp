import 'package:flutter/material.dart';
import 'package:gp_mobile/helper_widgets/initial_page_selector.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/themes/gideons_promise_colors.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const InitialPageSelector()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final simpleUser = Provider.of<SimpleUser?>(context);

    if (simpleUser != null) {
      return const InitialPageSelector();
    }

    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "News and Publications",
          body:
              "You will be able to see latest news and publications from Gideon's Promise",
          image: const Image(
            image: AssetImage('assets/newspaper.png'),
            height: 100,
            width: 100,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Profiles",
          body:
              "You will be able to manage your profile and get profile based recommendations",
          image: const Image(
            image: AssetImage('assets/man.png'),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Chat",
          body: "You will be able to chat with the Gideon's Promise community",
          image: const Image(
            image: AssetImage('assets/seo.png'),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
