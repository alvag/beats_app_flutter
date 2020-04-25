import 'package:flutter/material.dart';
import 'package:beats_app_flutter/src/widgets/custom_appbar.dart';
import 'package:beats_app_flutter/src/widgets/circular_background.dart';
import 'package:beats_app_flutter/src/widgets/buy_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CircularBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomAppBar(),
                  _Header(),
                ],
              ),
            ),
          ),
          BuyButton(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
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
