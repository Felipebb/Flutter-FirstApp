import 'package:flutter/material.dart';

import 'list.dart';


// ignore: must_be_immutable
class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 60.0),
        imageSection,
        SizedBox(height: 10.0),
        titleSection,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.white,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () => {
                  //O método push() adiciona uma rota à pilha de rotas gerenciadas pelo Navegador.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lista()),
                  )
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget imageSection = Column(
    children: <Widget>[
      Image.asset(
        'assets/2.0X/sinal.png',
        width: 200.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    ],
  );

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
            autofocus: true,
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white, fontSize: 18),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.white)),
              labelText: "Nome de Usuario",
              labelStyle: TextStyle(color: Colors.white),
            )), //TextField
        Divider(),
        TextField(
            autofocus: true,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.white, fontSize: 18),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.white)),
              labelText: "Senha",
              labelStyle: TextStyle(color: Colors.white),
            )),
        Divider(),
        Text(
          "Esqueceu sua senha?",
        ),
        Divider(),
        //TextField
      ],
    ),
  );
}