import 'package:flutter/material.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/screens/chat_screen_main.dart';
import '../models/chat_model.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
  }) : super(key: key);
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: const EdgeInsets.all(4),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chat.avatarUrl),
        radius: 25,
      ),
      title: Text(
        chat.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(chat.message),
      trailing: Text(chat.time),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MessageScreen(
              user: User(
                  name: chat.name,
                  lastScene: "2:30 pm",
                  avatarUrl: chat.avatarUrl),
            ),
          ),
        );
      },
    );
  }
}
