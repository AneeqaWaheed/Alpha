import 'package:alpha/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// Global object for accessing device screen size
late Size mq;
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize mq with a default value based on the screen
  mq = WidgetsBinding.instance!.window.physicalSize /
      WidgetsBinding.instance!.window.devicePixelRatio;

  // Set preferred orientation to portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Alpha',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Your theme data
          ),
      initialRoute: RoutesClass.getLoginRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
