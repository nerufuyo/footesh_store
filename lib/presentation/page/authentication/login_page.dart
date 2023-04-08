import 'package:flutter/material.dart';
import 'package:footesh_store/common/static_gap.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = "/login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: poppins1.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Please login to access many features and make your shopping experience more enjoyable.',
              style: poppins3.copyWith(
                color: tertiaryColor.withOpacity(.5),
              ),
            ),
            const VerticalGap15(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: tertiaryColor.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: secondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      hintText: 'Email',
                      hintStyle: poppins3.copyWith(
                        color: tertiaryColor.withOpacity(.5),
                      ),
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: tertiaryColor.withOpacity(.5),
                        size: 24,
                      ),
                    ),
                    style: poppins3.copyWith(
                      color: tertiaryColor,
                    ),
                  ),
                  const VerticalGap15(),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: tertiaryColor.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: secondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      hintText: 'Password',
                      hintStyle: poppins3.copyWith(
                        color: tertiaryColor.withOpacity(.5),
                      ),
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.key,
                        color: tertiaryColor.withOpacity(.5),
                        size: 24,
                      ),
                    ),
                    style: poppins3.copyWith(
                      color: tertiaryColor,
                    ),
                  ),
                  const VerticalGap15(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: poppins3.copyWith(
                        color: tertiaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const VerticalGap15(),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: poppins3.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const VerticalGap15(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: poppins3.copyWith(
                    color: tertiaryColor.withOpacity(.5),
                  ),
                ),
                const HorizontalGap10(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/register_page');
                  },
                  child: Text(
                    'Sign Up',
                    style: poppins3.copyWith(
                      color: secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
