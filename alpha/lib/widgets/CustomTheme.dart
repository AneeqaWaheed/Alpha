import 'package:flutter/material.dart';

class CustomTheme extends StatelessWidget {
  final Widget child;
  final bool applyTheme;

  const CustomTheme({Key? key, required this.child, this.applyTheme = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return applyTheme
        ? Theme(
            data: ThemeData(
              // Your theme data
              appBarTheme: AppBarTheme(
                centerTitle: true,
                elevation: 1,
                iconTheme: IconThemeData(color: Colors.white),
                titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
                backgroundColor: Color(0xFF7E22CE),
              ),
              useMaterial3: true,
            ),
            child: child,
          )
        : child;
  }
}
