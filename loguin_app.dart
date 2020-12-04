import 'package:appshareservices/config_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/trabalho.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: 40.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.black,
                color: Colors.orange,
                elevation: 7.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HometelaInicial(),
                        ),
                      ); // // Navigation Para Teste Utilizar esse navigation
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mostserrat'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
