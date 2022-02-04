import 'package:whatsapp/models/message.dart';

class User {
  final String name;
  final String lastScene;
  final List<Message> msgs;
  final String avatarUrl;
  User({
    required this.name,
    required this.lastScene,
    required this.avatarUrl,
    this.msgs = messageList,
  });
}
