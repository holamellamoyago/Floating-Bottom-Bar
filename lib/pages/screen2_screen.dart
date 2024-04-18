import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static const routename = 'screen2_screen';
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Screen 2'),
        ),
      ),
    );
  }
}
