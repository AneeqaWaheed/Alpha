import 'package:flutter/material.dart';

class CustomTheme extends StatelessWidget {
  final Widget child;
  final bool applyTheme;
  final String title;

  const CustomTheme({
    Key? key,
    required this.child,
    this.applyTheme = true,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return applyTheme
        ? Builder(
            builder: (BuildContext scaffoldContext) {
              return Theme(
                data: ThemeData(
                  appBarTheme: AppBarTheme(
                    centerTitle: true,
                    elevation: 1,
                    iconTheme: IconThemeData(color: Colors.white),
                    titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                    backgroundColor: Color(0xFF7E22CE),
                  ),
                  useMaterial3: true,
                ),
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(title),
                    leading: Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          onPressed: () {
                            Scaffold.of(scaffoldContext).openDrawer();
                          },
                          icon: const Icon(Icons.dehaze),
                        );
                      },
                    ),
                    // Add the actions here if needed
                    actions: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ],
                  ),
                  body: child,
                ),
              );
            },
          )
        : child;
  }
}
