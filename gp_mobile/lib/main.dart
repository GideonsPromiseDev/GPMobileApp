import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_mobile/pages/home/home.dart';
import 'package:gp_mobile/themes/gideons_promise_colors.dart';

import 'pages/onboarding/onboarding.dart';

const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
// <<<<<<< HEAD
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: kBackgroundColor,
//       ),
//       home: OnBoardingPage(),
//       // home: Profile(),

// =======
      /**
       * Sets the app bar and icon colors globally to the specified theme color
       * unless they are specifically overridden within a widget
       */
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(color: GideonsPromiseColors.blue),
          iconTheme: IconThemeData(color: GideonsPromiseColors.blue)),
      darkTheme: ThemeData.dark(),

      // Switches between light and dark theme based on device system theme
      themeMode: ThemeMode.system,
      home: FirebaseAuth.instance.currentUser!=null ? HomePage() : OnBoardingPage(),
    );
  }
}
