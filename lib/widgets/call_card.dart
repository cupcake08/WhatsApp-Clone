import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';
import 'package:whatsapp/utils/colors.dart';

class CallCard extends StatelessWidget {
  const CallCard({Key? key, required this.call}) : super(key: key);
  final Call call;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(call.avatarUrl!),
        radius: 25,
      ),
      title: Text(call.name),
      subtitle: Row(
        children: [
          call.type == CallType.going
              ? const Icon(
                  Icons.call_made,
                  color: tealGreen,
                  size: 17,
                )
              : const Icon(
                  Icons.call_received,
                  color: Colors.red,
                  size: 17,
                ),
          const SizedBox(
            width: 8,
          ),
          Text(call.lastCallTime),
        ],
      ),
      trailing: call.mode == CallMode.audio
          ? const Icon(
              Icons.call,
              color: tealGreen,
            )
          : const Icon(
              Icons.videocam_sharp,
              color: tealGreen,
            ),
    );
  }
}
