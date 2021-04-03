import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_okcodex/screens/auth/signup1.dart';
import 'package:widget_with_codeview/source_code_view.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class ShowCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithCodeView(
          child: SignupOnePage(),
          sourceFilePath: 'lib/screens/auth/auth1.dart',
        ),

    );
  }
}
