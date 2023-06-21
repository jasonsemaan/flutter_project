import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String item;

  ListItem(this.item);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 150,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static-00.iconduck.com/assets.00/flutter-icon-512x512-k9y8x41t.png'),
                  radius: 220,
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(children: <Widget>[
                const Text(
                  'Title: ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.visible,
                    widget.item,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
