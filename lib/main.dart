import 'package:flutter/material.dart';
import 'package:login_screen/forgot.dart';
import 'package:login_screen/home_page.dart';
import 'package:login_screen/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final routs = <String, WidgetBuilder>{
    // LoginPage.tag: (context) => const LoginPage(),
    // HomePage.tag: (context) => const HomePage()
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage());
  }
}
