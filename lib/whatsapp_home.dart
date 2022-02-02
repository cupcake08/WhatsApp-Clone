import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFloat = true;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFloat = true;
      } else {
        showFloat = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text('Camera'),
          ),
          Center(
            child: Text('Chats'),
          ),
          Center(
            child: Text('Status'),
          ),
          Center(
            child: Text('Calls'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: showFloat ? const Icon(Icons.message) : const Icon(Icons.camera),
        onPressed: () {},
      ),
    );
  }
}
