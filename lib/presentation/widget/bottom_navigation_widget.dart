// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footesh_store/presentation/page/home_page.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});
  static const routeName = '/bottom_navigation_widget';

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedIndex = 0;
  static const List pages = [
    HomePage(),
    Text('Search'),
    Text('Cart'),
    Text('Profile'),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: pages.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          iconSize: 24,
          backgroundColor: quaternaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: secondaryColor,
          unselectedItemColor: tertiaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.homeAlt),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.paperPlane),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAlt),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
