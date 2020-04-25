import 'package:flutter/material.dart';
import 'package:beats_app_flutter/src/widgets/cards_view.dart';
import 'package:beats_app_flutter/src/widgets/custom_header.dart';
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
                  CustomHeader(),
                  CardsView(),
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
