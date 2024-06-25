import 'package:flutter/material.dart';
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
                  title: '1',
                  subtitle: '11',
                ),
                buildPage(
                  image: Assets.imagesOnboarding,
                  title: '2',
                  subtitle: '22222222222222222',
                ),
                buildPage(
                  image: Assets.imagesOnboarding,
                  title: '3',
                  subtitle: '33333333333333',
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
      padding: const EdgeInsets.symmetric(horizontal: 40),
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
          const Gap(28),
          buildSmoothPageIndicator(),
          const Gap(20),
          (!isLast)
              ? TextButton(
                  onPressed: () => _pageController.jumpToPage(2),
                  child: const Text(
                    'Skip',
                    style: CustomTextStyle.bodySMedium,
                  ))
              : const Gap(32),
          const Gap(32),
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
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Column(
            children: [
              const Gap(24),
              Text(
                title,
                style: CustomTextStyle.h2,
              ),
              const Gap(8),
              Text(
                subtitle,
                style: CustomTextStyle.bodySRegular,
              ),
            ],
          ),
        ],
      );
}
