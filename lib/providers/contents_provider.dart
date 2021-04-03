import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_okcodex/models/contents_item_model.dart';

class ContentsProvider extends ChangeNotifier {
  List<Contents> contentsList = [
    Contents(
      'Authentication',
      [
        'Login one',
        'Login two',
        'Login  three',
        'Login four',
        'Auth one',
        'Auth two',
        'Auth three',
        'SignUp one',
        'SignUp two',
        'SignUp three',
        'Login one',
        'Login two',
        'Login  three',
        'Login four',
        'Login one',
        'Login two',
        'Login  three',
        'Login four',
        'Login one',
        'Login two',
      ],
      Icons.motorcycle,
    ),
    Contents(
      'Cars',
      ['Vehicle no. 3', 'Vehicle no. 4', 'Vehicle no. 6'],
      Icons.directions_car,
    ),
    Contents(
      'Cars',
      ['Vehicle no. 3', 'Vehicle no. 410', 'Vehicle no. 6'],
      Icons.directions_car,
    ),
  ];

  List<Contents> get getContents {
    return [...contentsList];
  }
}
