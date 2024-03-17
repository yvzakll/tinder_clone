import 'package:get/get.dart';
import 'package:tinder_clone/authentication/login_screen.dart';
import 'package:tinder_clone/authentication/register_screen.dart';
import 'package:tinder_clone/routes/routes.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.REGISTER_PAGE,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: Routes.LOGIN_PAGE,
      page: () => const LoginScreen(),
    ),
  ];
}
