import 'package:flutter/material.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({
    Key? key,
    this.page = 1,
  }) : super(key: key);
  final int page;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: PopupMenuButton(
        itemBuilder: (context) {
          if (page == 1) {
            return [
              const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text('New broadcast')),
              const PopupMenuItem(child: Text('Linked Devices')),
              const PopupMenuItem(child: Text("Starred Messages")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          } else if (page == 2) {
            return [
              const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          } else if (page == 3) {
            return [
              const PopupMenuItem(child: Text("Clear call logs")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          }
          return [];
        },
        child: const Icon(
          Icons.more_vert,
          color: Colors.white60,
        ),
      ),
    );
  }
}
