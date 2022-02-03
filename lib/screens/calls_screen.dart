import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';
import 'package:whatsapp/widgets/call_card.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CallCard(call: dummyCalls[index]);
      },
      itemCount: dummyCalls.length,
    );
  }
}
