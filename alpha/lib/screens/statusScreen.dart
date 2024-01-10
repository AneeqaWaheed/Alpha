import 'package:flutter/material.dart';

class Statuses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
      ),
      body: ListView(
        children: [
          StatusItem(
            username: 'John Doe',
            time: 'Just now',
            status: 'Feeling good today! 🌞',
            imageUrl: '',
          ),
          StatusItem(
            username: 'Jane Smith',
            time: '2 hours ago',
            status: 'On a vacation 🏖️',
            imageUrl: '',
          ),
          // Add more StatusItems as needed
        ],
      ),
    );
  }
}

class StatusItem extends StatelessWidget {
  final String username;
  final String time;
  final String status;
  final String imageUrl;

  const StatusItem({
    Key? key,
    required this.username,
    required this.time,
    required this.status,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(username),
      subtitle: Text(time),
      onTap: () {
        // Handle tapping on the status item
        // You can navigate to a detailed status screen or perform other actions
      },
      trailing: Icon(Icons.more_vert),
    );
  }
}
