import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hubo_test/app/modules/home/infra/models/item_model.dart';
import 'cards_controller.dart';
import 'widgets/expandable_list_widget.dart';

class CardsPage extends StatefulWidget {
  final String title;
  const CardsPage({Key key, this.title = "Cards"}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends ModularState<CardsPage, CardsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
        List<ItemModel> activeList = [];
        List<ItemModel> inactiveList = [];
        controller.itemList.forEach((element) {
          if (element.isAtctive) {
            activeList.add(element);
          } else if (!element.isAtctive) {
            inactiveList.add(element);
          }
        });
        return SingleChildScrollView(
            child: Column(
          children: [
            ExpandableListWidget(title: "Ativos (${activeList.length})", listItem: activeList,),
            ExpandableListWidget(title: "Inativos (${inactiveList.length})", listItem: inactiveList,),
          ],
        ));
      }),
    );
  }
}
