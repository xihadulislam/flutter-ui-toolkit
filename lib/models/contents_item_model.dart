import 'package:flutter/material.dart';

class Contents {
  String title;
  List<String> subContents = [];
  IconData icon;

  Contents(this.title, this.subContents, this.icon);
}