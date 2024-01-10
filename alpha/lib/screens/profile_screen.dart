import 'package:alpha/widgets/CustomTheme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  get user => null;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      title: 'Profile',
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_comment_rounded),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.user != null && widget.user.image != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(mq.height * 0.1),
                      child: CachedNetworkImage(
                        width: mq.height * 0.5,
                        height: mq.height * 0.5,
                        fit: BoxFit.fill,
                        imageUrl: widget.user.image,
                        errorWidget: (context, url, error) =>
                            const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                      ),
                    ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Color(0xFF7E22CE),
                    ),
                    title: Text(
                      'Aneeqa Waheed',
                      style: TextStyle(
                        color: Color(0xFF7E22CE),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFF7E22CE),
                    ),
                    title: Text(
                      '03464587346',
                      style: TextStyle(
                        color: Color(0xFF7E22CE),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
