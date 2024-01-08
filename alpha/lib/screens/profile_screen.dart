import 'package:alpha/widgets/CustomTheme.dart';
import 'package:alpha/widgets/chat_user_card.dart';
import 'package:alpha/widgets/profileDrawer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
          child: Column(
            children: [
              if (widget.user != null && widget.user.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(mq.height * .1),
                  child: CachedNetworkImage(
                    width: mq.height * .2,
                    height: mq.height * .2,
                    fit: BoxFit.fill,
                    imageUrl: widget.user.image,
                    errorWidget: (context, url, error) => const CircleAvatar(
                      child: Icon(CupertinoIcons.person_2),
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
            ],
          ),
        ),
      ),
    );
  }
}
