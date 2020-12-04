import 'package:flutter/material.dart';

import 'home_agenda.dart';

class ListaDeLivros extends StatefulWidget {
  final List<Livro> _livros = List();

  @override
  _ListaDeLivrosState createState() => _ListaDeLivrosState();
}

class _ListaDeLivrosState extends State<ListaDeLivros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Serviços",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8),
        child: ListView.builder(
          itemCount: widget._livros.length,
          itemBuilder: (context, index) {
            final livro = widget._livros[index];
            return ItemLivros(livro);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Livro> future = Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return TelaAdd();
            }),
          );
          future.then((livroRecebido) {
            setState(() {
              if (livroRecebido != null) widget._livros.add(livroRecebido);
            });
          });
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
