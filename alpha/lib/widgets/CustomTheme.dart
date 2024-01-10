import 'package:flutter/material.dart';
import 'package:alpha/widgets/profileDrawer.dart';
import 'package:get/get.dart';
import 'package:alpha/routes/routes.dart';

class CustomTheme extends StatelessWidget {
  final Widget child;
  final bool applyTheme;
  final String title;
  final bool showBottomNavigationBar;

  const CustomTheme({
    Key? key,
    required this.child,
    this.applyTheme = true,
    required this.title,
    this.showBottomNavigationBar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return applyTheme
        ? Theme(
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
              key: scaffoldKey,
              appBar: AppBar(
                title: Text(title),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.dehaze),
                ),
                // Add the actions here if needed
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ],
              ),
              drawer: ProfileDrawer(userName: 'YourUserName'),
              body: Builder(
                builder: (BuildContext scaffoldContext) {
                  return child;
                },
              ),
              bottomNavigationBar: showBottomNavigationBar
                  ? BottomNavigationBar(
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.chat),
                          label: 'Chats',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.watch),
                          label: 'Status',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.call),
                          label: 'Calls',
                        ),
                      ],
                      selectedItemColor: Color(0xFF7E22CE),
                      unselectedItemColor: Colors.grey,
                      currentIndex:
                          0, // Set the current index based on the active section
                      onTap: (index) {
                        // Handle tab selection
                        switch (index) {
                          case 0:
                            // Navigate to Chats screen
                            Get.toNamed(RoutesClass.getHomeRoute());
                            break;
                          case 1:
                            // Navigate to Status screen
                            Get.toNamed(RoutesClass.getStatusScreen());
                            break;
                          case 2:
                            // Navigate to Calls screen
                            // Example: Get.to(() => CallsScreen());
                            break;
                        }
                      },
                    )
                  : null,
            ),
          )
        : child;
  }
}
