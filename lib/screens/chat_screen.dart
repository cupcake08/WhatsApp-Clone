import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import '../widgets/chat_card.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ChatCard(
          chat: dummyData[index],
        );
      },
      itemCount: dummyData.length,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
