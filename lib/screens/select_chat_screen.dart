import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealGreenDark,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Select Contacts'),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                '55 contacts', //this is gonna be a variable soon
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return const [
              PopupMenuItem(child: Text('Invite a friend')),
              PopupMenuItem(child: Text('Contacts')),
              PopupMenuItem(child: Text('Refresh')),
              PopupMenuItem(child: Text('Help')),
            ];
          })
        ],
      ),
    );
  }
}
