import 'package:flutter/material.dart';
import 'package:footesh_store/common/static_gap.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const routeName = "/register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registration',
                style: poppins1.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Complete your registration to have an account then let\'s shoppping!',
                style: poppins3.copyWith(
                  color: tertiaryColor.withOpacity(.5),
                ),
              ),
              const VerticalGap15(),
              Container(
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
                        hintText: 'Name',
                        hintStyle: poppins3.copyWith(
                          color: tertiaryColor.withOpacity(.5),
                        ),
                        isDense: true,
                        prefixIcon: Icon(
                          Icons.person,
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
                        hintText: 'Confirm Password',
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
                      'Register',
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
                    'Have an account?',
                    style: poppins3.copyWith(
                      color: tertiaryColor.withOpacity(.5),
                    ),
                  ),
                  const HorizontalGap10(),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
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
      ),
    );
  }
}
