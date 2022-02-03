import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';
import 'package:whatsapp/utils/colors.dart';
// import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/widgets/status_card.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  final List<Status> recentUpdates =
      dummy.where((element) => element.viewed == true).toList();
  final List<Status> viewed =
      dummy.where((element) => element.viewed == false).toList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1643793129164-1d7829ba4a5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"),
                      radius: 25,
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: const Icon(
                          Icons.add,
                          size: 20,
                        ),
                        decoration: const BoxDecoration(
                            color: tealGreen, shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Tap to add status update"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Recent Updates",
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView(
                children: recentUpdates.map((e) {
                  return StatusCard(status: e);
                }).toList(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Viewed Updates",
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView(
                children: viewed.map((e) {
                  return StatusCard(status: e);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
