import 'package:flutter/material.dart';
import 'package:whatsapp/models/message.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/message_card.dart';

class MessageBar extends StatefulWidget {
  const MessageBar({Key? key, required this.msgs}) : super(key: key);
  final List<Message> msgs;
  @override
  _MessageBarState createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  final TextEditingController _messageController = TextEditingController();
  bool send = false;

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MessageCard(msg: widget.msgs[index]);
            },
            itemCount: 9,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.082,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20,
                color: const Color(0xFF087949).withOpacity(0.08),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tealGreenDark,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions)),
                      Expanded(
                        child: TextField(
                            controller: _messageController,
                            decoration: const InputDecoration(
                              hintText: "Message",
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  send = true;
                                });
                              } else {
                                setState(() {
                                  send = false;
                                });
                              }
                            }),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.attach_file)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                      // const Icon(Icons.attach_file),
                      // const Icon(Icons.camera_alt),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: tealGreen,
                ),
                child: send ? const Icon(Icons.send) : const Icon(Icons.mic),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
