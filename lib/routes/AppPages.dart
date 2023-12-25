import 'package:calculator_app_flutter/pages/bmi_page/binding/bmi_binding.dart';
import 'package:get/get.dart';

import '../pages/Splash_page/view/splash_page.dart';
import '../pages/arithmetic_page/view/arithmetic_page.dart';
import '../pages/bmi_page/view/bmi_page.dart';
import '../pages/home_page/view/home_page.dart';
import '../pages/login_page/binding/Login_binding.dart';
import '../pages/login_page/view/login_page.dart';
import '../pages/navigator_page/binding/navbar_binding.dart';
import '../pages/navigator_page/view/navbar_page.dart';
import '../pages/onboarding_page/binding/onboard_binding.dart';
import '../pages/onboarding_page/view/onboard_view.dart';
part 'AppRoutes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAVBAR;

  static final routes = [
    GetPage(
        name: _Paths.BOTTOM_NAVBAR,
        page: () => BottomNavBar(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: _Paths.HOME_PAGE,
        page: () => HomePage(),
        binding: HomePageBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: _Paths.ONBOARDING_PAGE,
        page: () => OnBoarding(),
        binding: OnBoardingBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)),
    GetPage(
        name: _Paths.SPLASH_PAGE,
        page: () => SplashPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)),
    GetPage(
        name: _Paths.LOGIN_PAGE,
        page: () => LoginPage(),
        binding: LoginBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: _Paths.ARITHMETIC_PAGE,
        page: () => CalculatorApp(),
        binding: OnBoardingBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)),
    GetPage(
        name: _Paths.ARITHMETIC_PAGE,
        page: () => CalculateBMI(),
        binding: BMIBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)),
  ];
}
