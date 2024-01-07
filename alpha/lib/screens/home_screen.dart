import 'package:alpha/widgets/CustomTheme.dart';
import 'package:alpha/widgets/chat_user_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      // Wrap with CustomTheme
      child: Scaffold(
        // AppBar
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Your onPressed logic here
            },
            icon: const Icon(Icons.dehaze),
          ),
          title: const Text('Alpha'),
          centerTitle: true, // Ensures the title is centered
        ),
        // Floating Button to add New Users
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
              onPressed: () {}, child: const Icon(Icons.add_comment_rounded)),
        ),
        body: ListView.builder(
            itemCount: 16,
            padding: EdgeInsets.only(top: mq.height * .01),
            itemBuilder: (context, index) {
              return ChatUserCard();
            }),
      ),
    );
  }
}
