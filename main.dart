import 'package:appshareservices/config_menu.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenHomePage(),
    );
  }
}

class SplashScreenHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          navigateAfterSeconds: HometelaInicial(),
          loaderColor: Colors.transparent,
        ),
        Center(
          child: Container(
            height: 200.0,
            width: 500.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/trabalho.png'),
                    fit: BoxFit.fill)),
          ),
        ),
      ],
    );
  }
}
