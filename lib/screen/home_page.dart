import 'package:flutter/material.dart';
import 'package:shop/screen/profile_page.dart';

import '../app/app_icons.dart';
import '../screens/contact/subscription/contact_3.dart';
import '../screens/hom/post_widget.dart';
import '../screens/subscription/subscription_4.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  void _navigateBotomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const PostWidget(),
    const Center(child: Text('Chegirmalar')),
    const ContactPage(),
    const SubsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBotomNavBar,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcons.home),
                size: 20,
              ),
              label: 'Asosiy qisim',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcons.discount),
                size: 20,
              ),
              label: 'Chegirma',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcons.chat),
                size: 20,
              ),
              label: 'Aloqa',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcons.notification),
                size: 20,
              ),
              label: 'Obuna',
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcons.user),
                size: 20,
              ),
              label: 'Profil',
              backgroundColor: Colors.blue[900],
            ),
          ]),
    );
  }
}
