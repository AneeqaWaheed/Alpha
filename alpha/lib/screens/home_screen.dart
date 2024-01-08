import 'package:alpha/widgets/CustomTheme.dart';
import 'package:alpha/widgets/chat_user_card.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // searching from search Icon
  // List<ChatUser> _searchList = [];
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      title: 'Alpha ',
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_comment_rounded),
          ),
        ),
        body: ListView.builder(
          itemCount: 16,
          padding: EdgeInsets.only(top: mq.height * .01),
          itemBuilder: (context, index) {
            return ChatUserCard();
          },
        ),
      ),
    );
  }
}
