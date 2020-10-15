import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: Container(
            padding: EdgeInsets.all(0),
            height: 60,
            width: 60,
            color: Colors.purple,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Icon(
                Icons.center_focus_strong_outlined,
                color: Colors.white,
                size: 40,
              ),
              //shape: ,
            )));
  }
}
