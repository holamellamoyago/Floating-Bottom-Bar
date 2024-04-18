import 'package:flutter/material.dart';
import 'package:flutter_bnb/pages/dashboard1_screen.dart';

class Screen1 extends StatelessWidget {
  static const routename = 'screen1_screen';
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Text('Página 1'),
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
    );
  }
}


