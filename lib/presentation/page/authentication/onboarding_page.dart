import 'package:flutter/material.dart';
import 'package:footesh_store/presentation/page/authentication/login_page.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  static const routeName = "/onboarding_page";

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: primaryColor,
      bodyPadding: const EdgeInsets.symmetric(horizontal: 16),
      controlsPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      pages: [
        PageViewModel(
          image: Center(
            child: Image.asset("assets/shoes3.png"),
          ),
          titleWidget: Text(
            "Don't worry about your style",
            style: poppins1.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          bodyWidget: Text(
            "We have a lot of shoes for you. Just choose your favorite one.",
            style: poppins2,
          ),
        ),
        PageViewModel(
          image: Center(
            child: Image.asset("assets/shoes2.png"),
          ),
          titleWidget: Text(
            "Most famous brand already here",
            style: poppins1.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          bodyWidget: Text(
            "We prepare a lot of shoes from famous brand. That's why you can trust us.",
            style: poppins2,
          ),
        ),
        PageViewModel(
          image: Center(
            child: Image.asset("assets/shoes1.png"),
          ),
          titleWidget: Text(
            "Customize your own style",
            style: poppins1.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          bodyWidget: Text(
            "You can customize your own style. Just choose your favorite color and size.",
            style: poppins2,
          ),
        ),
      ],
      dotsDecorator: DotsDecorator(
        size: const Size.square(8),
        activeSize: const Size(28, 8),
        activeColor: secondaryColor,
        color: quaternaryColor,
        spacing: const EdgeInsets.symmetric(horizontal: 4.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      isTopSafeArea: true,
      isBottomSafeArea: true,
      showNextButton: true,
      nextStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(quaternaryColor),
      ),
      doneStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(secondaryColor),
      ),
      next: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Next",
            style: poppins3.copyWith(color: tertiaryColor),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: tertiaryColor,
          ),
        ],
      ),
      done: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Done",
            style: poppins3.copyWith(color: tertiaryColor),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: tertiaryColor,
          ),
        ],
      ),
      onDone: () {
        Navigator.pushNamed(context, LoginPage.routeName);
      },
    );
  }
}
