import 'package:flutter/material.dart';
import 'package:chaapli_chat/components/round_button.dart';
import 'package:chaapli_chat/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kInputDecoration.copyWith(hintText: 'Enter Your Email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kInputDecoration.copyWith(hintText: 'Enter Your Password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundButton(
              title: 'Log in',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
