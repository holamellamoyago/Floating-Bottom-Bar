import 'package:flutter/material.dart';
import 'package:flutter_bnb/pages/dashboard1_screen.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: ()=> Navigator.popAndPushNamed(context, DashBoard1.routename),
        label: const Text('Ir al inicio'));
  }
}