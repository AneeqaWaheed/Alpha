import 'package:alpha/screens/home_screen.dart';
import 'package:alpha/Screens/auth/login_screen.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String Login = "/";
  static String Home = "/Home";

  static String getLoginRoute() => Login;
  static String getHomeRoute() => Home;

  static List<GetPage> routes = [
    GetPage(page: () => LoginScreen(), name: Login),
    GetPage(page: () => HomeScreen(), name: Home),
  ];
}
