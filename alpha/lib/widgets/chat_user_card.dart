import 'package:alpha/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class ChatUserCard extends StatefulWidget {
  const ChatUserCard({super.key});

  @override
  State<ChatUserCard> createState() => _ChatUserCardState();
}

class _ChatUserCardState extends State<ChatUserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: mq.width * .04, vertical: 4),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          // Navigate to the UserChatting screen when the card is tapped

          Get.toNamed(RoutesClass.getChatUser());
        },
        child: ListTile(
          //user profile Picture
          leading: CircleAvatar(child: Icon(Icons.person)),

          //user name
          title: Text('Aneeqa'),

          //last message
          subtitle: Text(
            'Last user message',
            maxLines: 1,
          ),

          //last message time
          trailing: Text(
            '12:00 PM',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
