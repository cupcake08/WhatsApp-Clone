// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/models/message.dart';
import 'package:whatsapp/utils/colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key, required this.msg}) : super(key: key);
  final Message msg;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          msg.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: msg.isSender ? tealGreen : tealGreenDark,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            minWidth: 100,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                constraints: const BoxConstraints(minWidth: 100),
                child: Text(
                  msg.msg,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          msg.time,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        if (msg.isSender)
                          const Icon(
                            Icons.done_all,
                            size: 15,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
