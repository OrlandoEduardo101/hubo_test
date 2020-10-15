import 'package:flutter/material.dart';
import 'package:hubo_test/app/modules/home/presenter/pages/person/pages/question/question_page.dart';
import 'package:hubo_test/app/modules/home/presenter/pages/person/pages/subscribe/subscribe_page.dart';

import 'pages/profile/profile_page.dart';

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            TabBar(
              indicatorWeight: 4,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              controller: _tabController,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              //indicator:  BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.purple),
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text:  "",
                ),
                Tab(
                  text: "",
                ),
                Tab(
                  text: "",
                ),
              ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[ProfilePage(), QuestionPage(), SubscribePage()],
            ),
          ),
        ],
      ),
    );
  }
}
