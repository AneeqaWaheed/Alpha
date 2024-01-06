import 'package:alpha/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'screens/auth/PhoneVerificationScreen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/home_screen.dart';

// Global object for accessing device screen size
late Size mq;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Alpha',
      theme: ThemeData(
          // Your theme data
          ),
      initialRoute: RoutesClass.getLoginRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
