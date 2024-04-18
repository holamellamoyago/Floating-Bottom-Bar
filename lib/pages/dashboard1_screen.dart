import 'package:flutter/material.dart';
import 'package:flutter_bnb/custom/bottomNavigationBar_custom.dart';
import 'package:flutter_bnb/pages/screen1_screen.dart';
import 'package:flutter_bnb/pages/screen2_screen.dart';
import 'package:flutter_bnb/services/ui_provider.dart';
import 'package:provider/provider.dart';

class DashBoard1 extends StatelessWidget {
  static const routename = 'dashboard1_screen';
  const DashBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.seleccionMenu;

    switch (currentIndex) {
      case 0: 
        return const Screen1();
      case 1:
        return const Screen2();
      default:
        return const Screen1();
    }
  }
}
