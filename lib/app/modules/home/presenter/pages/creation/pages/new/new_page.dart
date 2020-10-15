import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'new_controller.dart';
import 'widgets/slider_menu/slider_menu_widget.dart';

class NewPage extends StatefulWidget {
  final String title;
  const NewPage({Key key, this.title = "New"}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends ModularState<NewPage, NewController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Selecione um modelo", style: TextStyle(
                color: Colors.grey[400]
              ),
              ),
            ),
            Expanded(child: SliderMenuWidget()),
            Padding(padding: EdgeInsets.all(0.05*MediaQuery.of(context).size.height,))
          ],
        ),
      ),
    );
  }
}
