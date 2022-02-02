import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/utils/colors.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _page = 1;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.animation!.addListener(() {
      setState(() {
        _page = (_tabController.animation!.value).round();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealGreenDark,
        elevation: 0.7,
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 27,
              )),

          ///need to change this lator.
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.more_vert,
              size: 27,
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: tealGreen,
          controller: _tabController,
          tabs: [
            Tab(
              child:
                  Icon(Icons.camera_alt, color: _page == 0 ? tealGreen : null),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(
                    fontSize: 18, color: _page == 1 ? tealGreen : null),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(
                    fontSize: 18, color: _page == 2 ? tealGreen : null),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(
                    fontSize: 18, color: _page == 3 ? tealGreen : null),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Camera'),
          ),
          ChatScreen(),
          Center(
            child: Text('Status'),
          ),
          Center(
            child: Text('Calls'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: _page == 1
            ? const Icon(Icons.message)
            : _page == 2
                ? const Icon(Icons.camera_alt)
                : const Icon(Icons.call),
        onPressed: () {},
      ),
    );
  }
}
