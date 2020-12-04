import 'package:appshareservices/anuncios/servicos_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Tela1(),
      theme: ThemeData(
        hintColor: Colors.white,
        accentColor: Colors.white,
        brightness: Brightness.dark,
      )));
}

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaDeLivros(),
    );
  }
}

class TelaAdd extends StatefulWidget {
  @override
  _TelaAddState createState() => _TelaAddState();
}

int salvamentodecampos = 0; //variavel que pega o estado do livro (lido ou não)

class _TelaAddState extends State<TelaAdd> {
  void f1(int a) {
    setState(() {
      salvamentodecampos = a;
    });
  }

  final TextEditingController _campoTitulo = TextEditingController();
  final TextEditingController _campoAutor = TextEditingController();
  final TextEditingController _campoComentario = TextEditingController();
  final TextEditingController _campoUrl = TextEditingController();
//  SingingCharacter _character = SingingCharacter.sim;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adicionar Livro",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            EditorForm(
              cor: Colors.black,
              controlador: _campoTitulo,
              rotulo: 'Título',
            ),
            EditorForm(
              cor: Colors.black,
              controlador: _campoAutor,
              rotulo: 'Autor',
            ),
            EditorForm(
              cor: Colors.black,
              controlador: _campoComentario,
              rotulo: 'Comentário',
            ),
            EditorForm(
              cor: Colors.black,
              controlador: _campoUrl,
              rotulo: 'URL da imagem',
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Radio(
                      activeColor: Colors.green,
                      groupValue: salvamentodecampos,
                      value: 2,
                      onChanged: (v) {
                        f1(v);
                      },
                    ),
                    Text(
                      "Lido",
                      style: TextStyle(color: Colors.black),
                    ),
                    Radio(
                      activeColor: Colors.orange,
                      groupValue: salvamentodecampos,
                      value: 3,
                      onChanged: (v) {
                        f1(v);
                      },
                    ),
                    Text(
                      "A ler",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          _criarLivro(context),
        },
        child: Icon(Icons.done),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void _criarLivro(BuildContext context) {
    String titulo = _campoTitulo.text;
    String autor = _campoAutor.text;
    String comentario = _campoComentario.text;
    String url = _campoUrl.text;
    Color status;
    int statusLido = salvamentodecampos;

    if (statusLido == 2) {
      // Satus Lido ou Nao
      status = Colors.black;
    } else {
      status = Colors.orangeAccent;
    }
    if (titulo != "" && autor != "" && comentario != "") {
      final contatoCriado = Livro(titulo, autor, comentario, url, status);
      Navigator.pop(context, contatoCriado);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alerta'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Preencha corretamente os campos!'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class EditorForm extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final Color cor;
  EditorForm({this.controlador, this.rotulo, this.cor});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25, top: 10, right: 25),
        child: TextFormField(
            style: TextStyle(color: cor),
            cursorColor: Colors.yellow,
            controller: controlador,
            decoration: InputDecoration(hintText: rotulo)));
  }
}

class ItemLivros extends StatelessWidget {
  final Livro _livros;
  ItemLivros(this._livros);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 5, right: 20),
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: ExpansionTile(
            leading: Image.network(
              _livros.url,
              height: 90,
              width: 60,
            ),
            trailing: Icon(
              Icons.done,
              color: _livros.status,
              size: 20,
            ),
            title: Text(
              _livros.titulo,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              _livros.autor,
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Text(
                        "Comentário: " + _livros.comentario,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red[300],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

class Livro {
  final String titulo;
  final String autor;
  final String comentario;
  final String url;
  final Color status;
  Livro(this.titulo, this.autor, this.comentario, this.url, this.status);
}
