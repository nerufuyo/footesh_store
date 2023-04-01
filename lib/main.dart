import 'package:flutter/material.dart';
import 'package:footesh_store/presentation/page/home_page.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';
import 'package:footesh_store/presentation/widget/bottom_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Footesh Store",
      theme: customTheme,
      initialRoute: BottomNavigationWidget.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case BottomNavigationWidget.routeName:
            return MaterialPageRoute(
              builder: (context) => const BottomNavigationWidget(),
            );
          case HomePage.routeName:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
          default:
            return null;
        }
      },
    );
  }
}
