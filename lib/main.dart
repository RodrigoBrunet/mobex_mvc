import 'package:flutter/material.dart';
import 'package:mobex_mvc/themes/app.theme.dart';
import 'package:mobex_mvc/views/home.view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: appTheme(),
      home: HomeView(),
    );
  }
}
