import 'package:appshareservices/anuncios/servicos_menu.dart';
import 'package:appshareservices/loguin_app.dart';

import 'package:flutter/material.dart';

class HometelaInicial extends StatefulWidget {
  @override
  _HometelaInicialState createState() => _HometelaInicialState();
}

class _HometelaInicialState extends State<HometelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pa.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Share Services'))
          ],
        ),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Victor ",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Castoro-Italic',
                    color: Colors.black),
              ),
              accountEmail: Text(
                "victor@yahoo.com",
                style: TextStyle(
                    fontFamily: 'Castoro-Italic',
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 16.0,
                backgroundImage: AssetImage('assets/images/maradona.png'),
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage('assets/images/trabalho.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.home_repair_service,
                  color: Colors.red,
                ),
                title: Text("Meus Anuncios"),
                subtitle: Text("Serviços Feitos..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListaDeLivros()), // Navigation Para Teste Utilizar esse navigation
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  color: Colors.blue,
                ),
                title: Text("Sair"),
                subtitle: Text("Sair do Aplicativos"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListaDeLivros()), // Navigation Para Teste Utilizar esse navigation
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              shadowColor: Colors.blue,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 200.0,
                  height: 130.0,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.format_paint_rounded,
                            size: 70, color: Colors.black),
                        title: Text('Pintor',
                            style: TextStyle(color: Colors.black)),
                        subtitle: Text('Todos os Pintores em Região',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white,
              shadowColor: Colors.blue,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 200.0,
                  height: 130.0,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.electrical_services,
                            size: 70, color: Colors.black),
                        title: Text(
                          'Eletricista ',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          'Todos os Eletricistas em Região',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              shadowColor: Colors.blue,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200.0,
                  height: 130.0,
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.cleaning_services,
                            size: 70, color: Colors.black),
                        title: Text('Pedreiro',
                            style: TextStyle(color: Colors.black)),
                        subtitle: Text('Todos os Pedreiros em Região',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
