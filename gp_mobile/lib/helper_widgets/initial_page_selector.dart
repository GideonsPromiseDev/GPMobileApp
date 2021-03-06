import 'package:flutter/material.dart';
import 'package:gp_mobile/helper_widgets/authenticate_page_selector.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/pages/home/home.dart';
import 'package:provider/provider.dart';

class InitialPageSelector extends StatelessWidget {
  const InitialPageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final simpleUser = Provider.of<SimpleUser?>(context);

    if (simpleUser == null) {
      return const AuthenticatePageSelector();
    }
    return const HomePage();
  }
}
