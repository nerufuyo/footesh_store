import 'package:flutter/material.dart';
import 'package:footesh_store/presentation/page/authentication/login_page.dart';
import 'package:footesh_store/presentation/page/authentication/onboarding_page.dart';
import 'package:footesh_store/presentation/page/authentication/register_page.dart';
import 'package:footesh_store/presentation/page/home_page.dart';
import 'package:footesh_store/presentation/page/product_detail_page.dart';
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
      initialRoute: OnboardingPage.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case OnboardingPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const OnboardingPage(),
            );
          case LoginPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const LoginPage(),
            );
          case RegisterPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const RegisterPage(),
            );
          case BottomNavigationWidget.routeName:
            return MaterialPageRoute(
              builder: (context) => const BottomNavigationWidget(),
            );
          case HomePage.routeName:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
          case ProductDetailPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const ProductDetailPage(),
            );
          default:
            return null;
        }
      },
    );
  }
}
