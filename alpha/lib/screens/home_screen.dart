import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
