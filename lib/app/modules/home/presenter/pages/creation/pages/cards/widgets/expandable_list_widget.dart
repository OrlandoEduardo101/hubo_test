import 'package:flutter/material.dart';
import 'package:hubo_test/app/modules/home/infra/models/item_model.dart';

import 'expandable_container_widget.dart';

class ExpandableListWidget extends StatefulWidget {
  final String title;
  final List<ItemModel> listItem;

  const ExpandableListWidget({Key key, this.title, this.listItem})
      : super(key: key);

  @override
  _ExpandableListWidgetState createState() => new _ExpandableListWidgetState();
}

class _ExpandableListWidgetState extends State<ExpandableListWidget> {
  bool expandFlag = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[800]),
                ),
                IconButton(
                    icon: Center(
                      child: Icon(
                        expandFlag
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        expandFlag = !expandFlag;
                      });
                    }),
              ],
            ),
          ),
          ExpandableContainer(
              expanded: expandFlag,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final item = widget.listItem[index];
                  return Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.drag_indicator,
                            color: Colors.grey,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.network(
                              item.urlImg,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              item.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
                itemCount: widget.listItem.length,
              ))
        ],
      ),
    );
  }
}
