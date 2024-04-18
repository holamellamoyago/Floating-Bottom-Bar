import 'package:flutter/material.dart';
import 'package:flutter_bnb/pages/dashboard1_screen.dart';

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
            ElevatedButton(onPressed: () {}, child: Text('Screen 2')),
          ],
        )),
      ),
    );
  }
}
