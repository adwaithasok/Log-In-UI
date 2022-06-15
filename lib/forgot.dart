import 'package:flutter/material.dart';

class Forgot extends StatelessWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const head = Center(
        child: Padding(
      padding: EdgeInsets.only(top: 120),
      child: Text(
        'Forgot your password?',
        style: TextStyle(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ));
    const headtwo = Center(child: Padding(
      padding: EdgeInsets.only(left: 10, right: 10,),
      child: Text(
        'Enter your registered email below to receive password reset instruction',textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black38, fontSize: 15, fontWeight: FontWeight.normal),
      ),
    ));
    final email = Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: '',
          decoration: InputDecoration(
              hintText: 'example@gmail.com',
              hintStyle: TextStyle(fontSize: 14),
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(35))),
        ));
    final sendbutton = Padding(
      child: MaterialButton(
        onPressed: () {},
        minWidth: 100,
        height: 50,
        textColor: Colors.white,
        child: Text(
          'Send',
        ),
        color: Color(0xff00a4e4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
      padding: EdgeInsets.only(left: 40, right: 40),
    );
    const back = Center(
        child: Text(
      'Remember password ? Log in',
      style: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
    ));
    //  const login = Padding(padding: EdgeInsets.only(left: 288),
    //  child:Text('Log in',style: TextStyle(
    //   color: Colors.red,fontWeight:FontWeight.bold
    // ),));
    final photo = Image.asset('assets/lock.png',width: 100,height: 250,);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            head,
            SizedBox(
              height: 10,
            ),
            headtwo,
            SizedBox(
              height: 100,
            ),
            photo,
             SizedBox(
              height: 50,
              
            ),
            email,
            SizedBox(
              height: 10,
            ),
            sendbutton,
            SizedBox(
              height: 20,
            ),
            back
          ],
        ),
      ),
    );
  }
}
