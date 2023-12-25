
part of 'AppPages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH_PAGE = _Paths.SPLASH_PAGE;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const BOTTOM_NAVBAR = _Paths.BOTTOM_NAVBAR;
  static const SEARCH_PAGE = _Paths.SEARCH_PAGE;
  static const LOGIN_PAGE = _Paths.LOGIN_PAGE;
  static const ARITHMETIC_PAGE = _Paths.ARITHMETIC_PAGE;
  static const BMI_PAGE = _Paths.BMI_PAGE;


}

abstract class _Paths {
  _Paths._();

  static const SPLASH_PAGE = '/splash-page';
  static const LOGIN_PAGE = '/login-page';
  static const HOME_PAGE = '/home-page';
  static const SEARCH_PAGE = '/search-page';
  static const BOTTOM_NAVBAR = '/bottom-navbar';
  static const ARITHMETIC_PAGE ='/arithmetic-page';
  static const BMI_PAGE ='/bmi-page';

}
