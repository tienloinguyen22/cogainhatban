import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.orange,
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.chat_bubble),
              child: Text('Chats'),
            ),
            Tab(
              icon: new Icon(Icons.settings),
              child: Text('Settings'),
            ),
          ],
          labelColor: Color(0xff2CB9B0),
          unselectedLabelColor: Color(0xff949494),
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.transparent,
        ),
      ),
    );
  }
}
