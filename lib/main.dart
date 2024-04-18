import 'package:flutter/material.dart';
import 'package:flutter_bnb/pages/dashboard1_screen.dart';
import 'package:flutter_bnb/pages/login_screen.dart';
import 'package:flutter_bnb/pages/screen1_screen.dart';
import 'package:flutter_bnb/pages/screen2_screen.dart';
import 'package:flutter_bnb/services/ui_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routename,
        routes: {
          LoginScreen.routename :(context) => const LoginScreen(),
          DashBoard1.routename :(context) => const DashBoard1(),
          Screen1.routename :(context) => const Screen1(),
          Screen2.routename :(context) => const Screen2()
        },
      ),
    );
  }
}
