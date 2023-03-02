import 'package:login_app_authentication_firebase/src/constants/colors.dart';
import 'package:login_app_authentication_firebase/src/constants/image_strings.dart';
import 'package:login_app_authentication_firebase/src/constants/text_strings.dart';
import 'package:login_app_authentication_firebase/src/features/models/onboarding_models.dart';
import 'package:login_app_authentication_firebase/src/screens/onboarding%20screens/onboarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //Variables
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      onBoardingPageWidget(
        model: OnBoardingModel(
            image: avacado_image,
            title: onBoardingPage1Title,
            subTitle: onBoardingPage1SubTitle,
            counterText: onBoardingPage1CounterText,
            bgColor: onBoardingPage1Color,
            height: size.height),
      ),
      onBoardingPageWidget(
        model: OnBoardingModel(
            image: chilli_image,
            title: onBoardingPage2Title,
            subTitle: onBoardingPage2SubTitle,
            counterText: onBoardingPage2CounterText,
            bgColor: onBoardingPage2Color,
            height: size.height),
      ),
      onBoardingPageWidget(
        model: OnBoardingModel(
            image: broccoli_image,
            title: onBoardingPage3Title,
            subTitle: onBoardingPage3SubTitle,
            counterText: onBoardingPage3CounterText,
            bgColor: onBoardingPage3Color,
            height: size.height),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: pages,
              liquidController: controller,
              onPageChangeCallback: OnPageChangeCallback,
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              enableSideReveal: true,
            ),
            Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () {
                  int nextPage = controller.currentPage + 1;
                  controller.animateToPage(page: nextPage);
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(20.0),
                  onPrimary: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20.0,
              right: 20.0,
              child: TextButton(
                onPressed: () => controller.jumpToPage(page: 2),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      color: Color.fromARGB(255, 28, 28, 28), fontSize: 15.0),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color.fromARGB(255, 30, 30, 30),
                  dotHeight: 5.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void OnPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
    // currentPage = activePageIndex;
  }
}
