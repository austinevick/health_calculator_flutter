import 'package:flutter/material.dart';
import 'package:health_calculator/screen_one.dart';
import 'package:health_calculator/second_screen.dart';

import 'intro_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IntroPage()
      
    );
  }
}
