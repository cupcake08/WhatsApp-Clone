import 'package:flutter/material.dart';
import 'package:whatsapp/models/message.dart';
import 'package:whatsapp/utils/colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key, required this.msg}) : super(key: key);
  final Message msg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment:
            msg.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Text(
                  msg.msg,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  msg.time,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: msg.isSender ? tealGreen : tealGreenDark,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
