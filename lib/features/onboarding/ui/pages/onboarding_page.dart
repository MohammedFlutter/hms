import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/onboarding/onboarding_cubit.dart';
import 'package:medica/generated/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  bool isLast = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                if (index == 2) {
                  isLast = true;
                } else {
                  isLast = false;
                }
                setState(() {});
              },
              children: [
                buildPage(
                  image: Assets.imagesOnboarding,
                  title: 'Efficient Patient Management',
                  subtitle:
                      'Streamline patient records and improve care coordination.',
                ),
                buildPage(
                  image: Assets.imagesOnboarding,
                  title: 'Seamless Appointment Scheduling',
                  subtitle:
                      'Reduce wait times and optimize resource allocation.',
                ),
                buildPage(
                  image: Assets.imagesOnboarding,
                  title: 'Enhanced Communication',
                  subtitle:
                      'Connect patients, doctors, and staff for better collaboration.',
                ),
              ],
            ),
          ),
          buildFooter(context),
        ],
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: FilledButton(
                    onPressed: () {
                      if (isLast) {
                        BlocProvider.of<OnboardingCubit>(context)
                            .onGetStarted();
                        context.goNamed(CustomRoutes.signUp);
                      } else {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      }
                    },
                    child: Text(isLast ? 'Get Started' : 'Next')),
              ),
            ],
          ),
          Gap(28.h),
          buildSmoothPageIndicator(),
          Gap(20.h),
          (!isLast)
              ? TextButton(
                  onPressed: () => _pageController.jumpToPage(2),
                  child: const Text(
                    'Skip',
                    style: CustomTextStyle.bodySMedium,
                  ))
              :  Gap(32.h),
           Gap(32.h),
        ],
      ),
    );
  }

  SmoothPageIndicator buildSmoothPageIndicator() {
    return SmoothPageIndicator(
      controller: _pageController,
      count: 3,
      effect: const ExpandingDotsEffect(),
      onDotClicked: (index) => _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget buildPage(
          {required String title,
          required String subtitle,
          required String image}) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
               Gap(24.h),
              Text(
                title,
                style: CustomTextStyle.h2,
              ),
               Gap(8.h),
              Text(
                subtitle,
                style: CustomTextStyle.bodySRegular,
              ),
            ],
          ),
        ],
      );
}
