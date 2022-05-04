import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/main_foodpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainFoodpage(title: 'Food Delivery Service'));
  }
}
