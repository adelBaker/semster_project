import 'package:flutter/material.dart';
import 'package:semester_project/modules/charity_ads/charity_ads_screen.dart';

import 'layout/charity_app/home_layout.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: CharityAdsScreen(),
    );
  }
}
