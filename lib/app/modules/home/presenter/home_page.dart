import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hubo_test/app/modules/home/presenter/pages/creation/creation_page.dart';
import 'package:hubo_test/app/modules/home/presenter/pages/person/person_page.dart';
import 'home_controller.dart';
import 'widgets/BottomNavigationBarWidget/bottom_navigation_bar_widget.dart';
import 'widgets/FloatingActionButton/floating_action_button_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  List<Widget> pages = [
    Container(),
    Container(),
    CreationPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return pages[controller.bottomNavigationBarController.index];
      }),
      bottomNavigationBar: BottomNavigationBarWidget(),
      floatingActionButton: FloatingActionButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
