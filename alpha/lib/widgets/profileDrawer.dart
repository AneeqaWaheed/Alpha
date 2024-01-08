import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class ProfileDrawer extends StatelessWidget {
  final String userName;

  const ProfileDrawer({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF7E22CE),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    // Image from DB
                    backgroundImage: AssetImage(''),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '$userName',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xFF7E22CE),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(0xFF7E22CE),
              ),
            ),
            onTap: () {
              // Handle Home button press in the drawer
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Color(0xFF7E22CE),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Color(0xFF7E22CE),
              ),
            ),
            onTap: () {
              //navigate to Profile
              Get.toNamed(RoutesClass.getUserProfile());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Color(0xFF7E22CE),
            ),
            title: Text(
              'Update Profile',
              style: TextStyle(
                color: Color(0xFF7E22CE),
              ),
            ),
            onTap: () {
              //navigate to Update Profile
              Get.toNamed(RoutesClass.getUpdateProfile());
            },
          ),
          Divider(), // Add a divider between other options and Logout
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Color(0xFF7E22CE),
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Color(0xFF7E22CE),
              ),
            ),
            onTap: () {
              // Handle logout button press
              Navigator.pop(context); // Close the drawer
              // You can navigate to the login screen or perform any logout logic here
            },
          ),
        ],
      ),
    );
  }
}
