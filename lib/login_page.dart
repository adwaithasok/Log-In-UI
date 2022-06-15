import 'package:flutter/material.dart';
import 'package:login_screen/forgot.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String tag = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: Hero,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 100.0,
          child: Image.asset('assets/digital.png'),
        ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'adwaithdeva@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '123456',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginbButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 0.0,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new HomePage(),
                ));
            // Navigator.of(context).pushNamed(HomePage.tag);
          },
          padding: const EdgeInsets.all(10),
          color: Color(0xff00a4e4),
          child: const Text(
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    final forgotLabel = TextButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Forgot()));
        },
        child: const Text('Forgot Password',
            style: TextStyle(color: Colors.black54)));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        children: [
          logo,
          const SizedBox(
            height: 40.0,
          ),
          email,
          const SizedBox(
            height: 8.0,
          ),
          password,
          const SizedBox(
            height: 24.0,
          ),
          loginbButton,
          forgotLabel
        ],
      )),
    );
  }
}
