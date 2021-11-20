import 'dart:ui';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

int n = 0;

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mi primera APP",
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text('Mi primera App'),
              actions: const <Widget>[
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.email),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            body: Container(
                child: Center(
              child: Column(
                children: <Widget>[
                  Text(cambiarTexto()),
                  RaisedButton(
                    onPressed: incrementar,
                    splashColor: Colors.yellow,
                    child: Text('Hola $n'),
                    color: Colors.green,
                  ),
                  Image.asset('.dart_tool/assets/images/login.png')
                ],
              ),
            )),
            floatingActionButton: FloatingActionButton(
                onPressed: () => debugPrint('Click'),
                backgroundColor: Colors.red,
                child: const Icon(Icons.add)),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.print), label: 'Hay que imprimir'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.send), label: 'Hay que enviar'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.adjust), label: 'Hay que ajustar')
              ],
              onTap: (int i) => debugPrint("Elemento: $i"),
            )));
  }

  incrementar() {
    setState(() => n++);
  }
}

String cambiarTexto() {
  return "Hemos cambiado el texto $n veces";
}
