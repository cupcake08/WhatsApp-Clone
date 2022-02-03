import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls_screen.dart';
import './screens/select_chat_screen.dart';
import './screens/status_screen.dart';
import './widgets/pop_menu.dart';
import './screens/chat_screen.dart';
import './utils/colors.dart';

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
        foregroundColor: Colors.white60,
        backgroundColor: tealGreenDark,
        elevation: 0.7,
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 27,
            ),
          ),
          PopupMenu(page: _page),
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
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: _page == 2
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  child: const Icon(
                    Icons.edit,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.camera_alt, color: Colors.white),
                ),
              ],
            )
          : FloatingActionButton(
              child: _page == 1
                  ? const Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    )
                  : _page == 2
                      ? const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.add_ic_call_rounded,
                          color: Colors.white,
                        ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const SelectContact()),
                );
              },
            ),
    );
  }
}
