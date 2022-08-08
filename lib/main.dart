import 'package:flutter/material.dart';
import 'package:shopping_app/pages/main_page.dart';

import 'pages/detail_page.dart';
import 'pages/product_page.dart';
import 'pages/login_page.dart';
import 'pages/nav_bar/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


