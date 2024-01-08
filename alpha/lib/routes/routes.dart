import 'package:alpha/screens/home_screen.dart';
import 'package:alpha/Screens/auth/login_screen.dart';
import 'package:alpha/screens/profile_screen.dart';
import 'package:alpha/screens/update_profile.dart';
import 'package:alpha/screens/chatUser.dart';

import 'package:get/get.dart';

class RoutesClass {
  static String Login = "/";
  static String Home = "/Home";
  static String UserProfile = "/UserProfile";
  static String UpdateProfile = "/UpdateProfile";
  static String ChatUser = "/ChatUser";

  static String getLoginRoute() => Login;
  static String getHomeRoute() => Home;
  static String getUserProfile() => UserProfile;
  static String getUpdateProfile() => UpdateProfile;
  static String getChatUser() => ChatUser;

  static List<GetPage> routes = [
    GetPage(page: () => LoginScreen(), name: Login),
    GetPage(page: () => HomeScreen(), name: Home),
    GetPage(page: () => ProfileScreen(), name: UserProfile),
    GetPage(page: () => ProfileUpdate(), name: UpdateProfile),
    GetPage(page: () => UserChatting(), name: ChatUser),
  ];
}
