import 'package:flutter/material.dart';
import 'package:flutter_bnb/pages/dashboard1_screen.dart';
import 'package:flutter_bnb/pages/dashboard2_screen.dart';
import 'package:flutter_bnb/pages/dashboard3_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routename = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center( 
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, DashBoard1.routename);
                },
                child: Text('Screen 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, DashBoard2.routename);
                },
                child: Text('Screen 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, DashBoard3.routename);
                },
                child: Text('Screen 3')),
          ],
        )),
      ),
    );
  }
}
