import 'package:flutter/material.dart';
import 'calls.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert_rounded),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                'Chats',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
