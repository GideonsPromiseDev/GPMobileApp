import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_mobile/helper_widgets/initial_page_selector.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/themes/gideons_promise_colors.dart';
import 'package:gp_mobile/utils/firebase_authenticator.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<SimpleUser?>.value(
      value: FirebaseAuthenticator().simpleUser,
      initialData: null,
      child: MaterialApp(
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
        home: const InitialPageSelector(),
      ),
    );
  }
}
