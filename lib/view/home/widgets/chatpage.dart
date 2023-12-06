import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final User user;

  ChatPage({required this.user, required List<User> users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with ${user.name}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl ?? ''),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // replace with your list of messages
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      Text('Message $index'), // replace with your message text
                  trailing: user.unreadMessageCount > 0
                      ? CircleAvatar(
                          radius: 10,
                          child: Text(
                            '${user.unreadMessageCount}',
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      : null,
                );
              },
            ),
          ),
          TextField(
            onSubmitted: (message) {
              // Implement your message sending logic here
            },
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String avatarUrl;
  final int unreadMessageCount;

  User(
      {required this.name,
      required this.avatarUrl,
      required this.unreadMessageCount});
}
