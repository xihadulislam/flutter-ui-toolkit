import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_okcodex/models/contents_item_model.dart';
import 'package:flutter_ui_challenges_okcodex/providers/contents_provider.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/auth1.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/auth2.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/auth3.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login1.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login10.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login11.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login12.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login13.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login14.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login2.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login3.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login4.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login5.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login7.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login8.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/login9.dart';
import 'package:provider/provider.dart';

import '../utils/font_awesome_flutter.dart';
import '../utils/needs.dart';
import 'auth/login6.dart';

class AuthScreen extends StatelessWidget {
  // static final String path = "lib/src/pages/login/auth1.dart";

  final int contentFromListIndex;
  final int indexOfSubItems;

  AuthScreen(this.contentFromListIndex, this.indexOfSubItems);

  List<Widget> allAuthList = [
    AuthOnePage(),
    AuthTwoPage(),
    AuthThreePage(),
    LoginOnePage(),
    LoginTwoPage(),
    LoginThreePage(),
    LoginFourPage(),
    LoginFivePage(),
    LoginSixPage(),
    LoginSevenPage(),
    LoginEightPage(),
    LoginNinePage(),
    LoginTenPage(),
    LoginElevenPage(),
    LoginTwelvePage(),
    LoginPageThirdteen(),
    LoginPageFourteen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.code)],
      ),
      body: SafeArea(
        child: allAuthList[indexOfSubItems],
      ),
    );
  }
}
