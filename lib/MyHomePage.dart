import 'package:flutter/material.dart';
import 'Screens/Calls_screen.dart';
import 'Screens/Camera_screen.dart';
import 'Screens/Chats_screen.dart';
import 'Screens/Status_screen.dart';

class MyHomePage extends StatefulWidget {
  var cameras;
  MyHomePage(this.cameras);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showfab = true;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showfab = true;
      } else {
        showfab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 25.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS'),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALLS'),
            ),
          ],
        ),
        elevation: 2.7,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera_screen(widget.cameras),
          Chats_screen(),
          Status_screen(),
          Calls_screen(),
        ],
      ),
      floatingActionButton: showfab
          ? FloatingActionButton(
              child: Icon(
                Icons.call,
              ),
              backgroundColor: Color(0xff075E54),
            )
          : null,
    );
  }
}
