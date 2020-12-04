import 'package:appshareservices/loguin_app.dart';
import 'package:flutter/material.dart';

class HomeConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                HomeScreen();
              })
        ],
      ),
    );
  }
}
