import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/main.dart';
import 'package:food_ninja/presentation/onboarding/slider_model.dart';
import 'package:food_ninja/presentation/onboarding/slider.dart';
import 'package:food_ninja/presentation/signup/signup_screen.dart';
import 'package:food_ninja/util/app_colors.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<SliderModel> slides = [];
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    slides = getSlides();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: slides.length,
              itemBuilder: (context, index) {
                return OnBoardingSlider(
                  image: slides[index].image,
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(slides.length, (index) => buildDot(index, context)),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            color: AppColors.PrimaryColor,
            child: TextButton(
              onPressed: () {
                if (currentIndex == 0) {  // If on the first slide
                  _pageController.animateToPage(1,
                      duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
                } else if (currentIndex == 1) {  // If on the second slide
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                }
              },
              child: const Text("Next"),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.PrimaryColor
      ),
    );
  }
}
