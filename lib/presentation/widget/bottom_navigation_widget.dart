// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footesh_store/presentation/page/home_page.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 16,
            top: 8,
          ),
          decoration: const BoxDecoration(
            color: primaryColor,
          ),
          child: GNav(
            backgroundColor: primaryColor,
            activeColor: secondaryColor,
            color: tertiaryColor,
            tabBackgroundColor: quaternaryColor,
            gap: 8,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            onTabChange: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            tabs: const [
              GButton(icon: FontAwesomeIcons.homeAlt, text: 'Home'),
              GButton(icon: FontAwesomeIcons.dashcube, text: 'Product'),
              GButton(icon: FontAwesomeIcons.heart, text: 'Favorite'),
              GButton(icon: FontAwesomeIcons.userAlt, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}


// Scaffold(
//         body: pages.elementAt(selectedIndex),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: selectedIndex,
//           onTap: onItemTapped,
//           iconSize: 24,
//           backgroundColor: quaternaryColor,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           selectedItemColor: secondaryColor,
//           unselectedItemColor: tertiaryColor,
//           type: BottomNavigationBarType.fixed,
//           items: const [
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.homeAlt),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.dashcube),
//               label: 'Product',
//             ),
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.heart),
//               label: 'Favorite',
//             ),
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.userAlt),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),