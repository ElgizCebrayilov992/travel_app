import 'package:flutter/material.dart';

import 'future/view/homePage/home_page_view.dart';
import 'future/view/onBoardingPage/onboarding_view_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: OnBoardingPage(),
    );
  }
}
