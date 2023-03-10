import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: 'Asosiy'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_suggest_outlined,
            ),
            label: 'Chegirma'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_sharp,
            ),
            label: 'Aloqa'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,
            ),
            label: 'Obuna'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person),
             label: 'Kabinet')
      ],
    ));
  }
}
