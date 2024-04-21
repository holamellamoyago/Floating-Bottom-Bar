import 'package:flutter/material.dart';
import 'package:flutter_bnb/pages/login_screen.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: ()=> Navigator.popAndPushNamed(context, LoginScreen.routename),
        label: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [Icon(Icons.home), SizedBox(width: 4,),Text('Ir al inicio')],));
  }
}