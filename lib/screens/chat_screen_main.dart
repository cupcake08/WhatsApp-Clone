import 'package:flutter/material.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/chat_bottom_bar.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: tealGreenDark,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                )),
            CircleAvatar(
              backgroundImage: NetworkImage(widget.user.avatarUrl),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    widget.user.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  fit: BoxFit.contain,
                ),
                Text(
                  "last scene today at ${widget.user.lastScene}",
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('View contact')),
              const PopupMenuItem(child: Text('Media,Links and Docs')),
              const PopupMenuItem(child: Text('Search')),
              const PopupMenuItem(child: Text('Mute Notifications')),
              const PopupMenuItem(child: Text('Wallpaper')),
              PopupMenuItem(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("More"),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ],
              )),
            ];
          }),
        ],
      ),
      body: MessageBar(
        msgs: widget.user.msgs,
      ),
    );
  }
}
