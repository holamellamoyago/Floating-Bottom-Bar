import 'package:flutter/material.dart';
import 'package:flutter_bnb/services/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.seleccionMenu;

    return BottomNavigationBar(
      onTap: (int index) => uiProvider.seleccionMenu = index,
      currentIndex: currentIndex,
      elevation: 20,
      backgroundColor: Colors.grey[100],
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
      ],
    );
  }
}
