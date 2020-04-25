import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Beats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          Text('By Dre',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
        ],
      ),
    );
  }
}
