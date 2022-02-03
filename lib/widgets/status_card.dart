import 'package:flutter/material.dart';
// import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/models/status_model.dart';
import 'package:whatsapp/utils/colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({Key? key, required this.status}) : super(key: key);
  final Status status;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: status.viewed ? tealGreen : grey,
        child: CircleAvatar(
          backgroundImage: NetworkImage(status.fileUrl),
          radius: 25,
        ),
      ),
      title: Text(status.name),
      subtitle: Text(status.time),
      onTap: () {},
    );
  }
}
