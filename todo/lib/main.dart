import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:ui';
// import 'package:characters/characters.dart';

import 'package:todo/views/home_view.dart';

void main() {
 runApp(MyApp());
  }

 class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        
        primarySwatch: Colors.cyan,
      ),
    home: HomeView(),
    );
  }
}


