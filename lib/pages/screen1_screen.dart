import 'package:flutter/material.dart';
import 'package:flutter_bnb/custom/floatingActionButton_custom.dart';

class Screen1 extends StatelessWidget {
  static const routename = 'screen1_screen';
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Text('Página 1'),
        ),
      ),
      floatingActionButton: const CustomFloatingButton(),
    );
  }
}


