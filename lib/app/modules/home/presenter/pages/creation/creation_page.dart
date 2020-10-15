import 'package:flutter/material.dart';
import 'package:hubo_test/app/modules/home/presenter/pages/creation/pages/new/new_page.dart';

import 'pages/cards/cards_page.dart';

class CreationPage extends StatefulWidget {
  final String title;

  const CreationPage({Key key, this.title = "CRIAÇÃO"}) : super(key: key);
  @override
  _CreationPageState createState() => _CreationPageState();
}

class _CreationPageState extends State<CreationPage> with SingleTickerProviderStateMixin  {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
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
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          indicatorWeight: 4,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          controller: _tabController,
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "NOVO",
            ),
            Tab(
              text: "CARTÕES",
            ),
          ],
        ),
      ),
      body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              NewPage(),
              CardsPage(),
            ],
          ),
    );
  }
}