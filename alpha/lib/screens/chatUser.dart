import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';

class UserChatting extends StatefulWidget {
  const UserChatting({Key? key}) : super(key: key);

  @override
  State<UserChatting> createState() => _UserChattingState();
}

class _UserChattingState extends State<UserChatting> {
  @override
  Widget build(BuildContext context) {
    // Set system UI overlay style here if needed
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
      ),
    );

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: _appBar(),
          ),
          body: Column(
            children: [
              _chatInput(),
            ],
          )),
    );
  }

  Widget _appBar() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(mq.height * .03),
          child: CachedNetworkImage(
            width: mq.height * .05,
            height: mq.height * .05,
            imageUrl: 'images/Alpha.PNG',
            errorWidget: (context, url, error) =>
                const CircleAvatar(child: Icon(CupertinoIcons.person)),
          ),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aneeqa Waheed',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 2),
            Text(
              '7:00am',
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _chatInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: [
          //input fields and buttons
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  //emoji button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.emoji_emotions,
                        color: Color(0xFF7E22CE), size: 26),
                  ),
                  //Input Field
                  Expanded(
                      child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                              hintText: 'Type Something...',
                              hintStyle: TextStyle(color: Color(0xFF7E22CE)),
                              border: InputBorder.none))),
                  //pick image from gallery
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.emoji_emotions,
                        color: Color(0xFF7E22CE), size: 26),
                  ),
                  //take image from camera
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.emoji_emotions,
                        color: Color(0xFF7E22CE), size: 26),
                  ),
                  SizedBox(width: mq.width * .02)
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 0,
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 4, left: 10),
            shape: const CircleBorder(),
            color: Color(0xFF7E22CE),
            child: Icon(
              Icons.send,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
