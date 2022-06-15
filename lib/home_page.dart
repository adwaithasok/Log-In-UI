import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  static String tag = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const alucard =  Hero(
        tag: 'Hero',
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: CircleAvatar(  
                      radius: 150,     
        
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/alucard.jpg'),
          ),
        ));

    const welcome =  Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Welcome Jhon',
          style: TextStyle(fontSize: 26.0, color: Colors.black),
        ));

    const lorem =  Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempor dictum purus, vitae blandit leo lobortis vitae. Etiam ipsum lacus, eleifend ut vestibulum vitae, ultrices vel est. Vivamus egestas varius orci non pellentesque. Aenean quis varius lacus, non placerat elit. Integer a diam vehicula, congue mi eget, egestas sem. Aenean.',
          style: TextStyle(fontSize: 16.0, color: Colors.black),
        ));

    final body = Center(
        child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff00a4e4),
        Colors.blue,
      ])),
      child: Column(
        children: const <Widget>[
          alucard,
          welcome,
          lorem,
        ],
      ),
    ));

    return Scaffold(
      body: body,
    );
  }
}
