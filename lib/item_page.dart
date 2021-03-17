import 'package:flutter/material.dart';
import 'models/item.dart';

class ItemPage extends StatelessWidget {
  final Item newItem;

  ItemPage({
    Key key,
    this.newItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: newItem.image,
          ),
          Divider(),
          Container(
            alignment: Alignment.center,
            child: Text(
              newItem.name + " : " + newItem.price.toString(),
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
