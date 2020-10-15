import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hubo_test/app/modules/home/presenter/widgets/BottomNavigationBarWidget/bottom_navigation_bar_controller.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BottomNavigationBarController controller = Modular.get();
    return Observer(
        builder: (_) => BottomAppBar(
              elevation: 10,
              shape: CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      BottomItem(
                          icon: Icons.home_outlined,
                          index: 0,
                          controller: controller,
                          onPressed: () {
                            controller.setIndex(0);
                          }),
                        
                      BottomItem(
                          icon: Icons.bar_chart_outlined,
                          index: 1,
                          controller: controller,
                          onPressed: () {
                            controller.setIndex(1);
                          }),
                      Spacer(flex: 1),
                      BottomItem(
                          icon: Icons.queue_outlined,
                          index: 2,
                          controller: controller,
                          onPressed: () {
                            controller.setIndex(2);
                          }),
                      BottomItem(
                          icon: Icons.person_outline,
                          index: 3,
                          controller: controller,
                          onPressed: () {
                            controller.setIndex(3);
                          }),
                    ],
                  ),
                ),
              ),
            ));
  }
}

class BottomItem extends StatelessWidget {
  final int index;
  final IconData icon;
  final Function onPressed;
  final BottomNavigationBarController controller;

  const BottomItem(
      {Key key, this.index, this.icon, this.onPressed, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return IconButton(
        icon: Icon(icon,
            color: controller.index == this.index
                ? Colors.purple
                : Colors.grey[300]),
        onPressed: onPressed,
      );
    });
  }
}
