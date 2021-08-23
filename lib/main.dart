import 'package:flutter/material.dart';

void main() => runApp(HolaMundo());

class HolaMundo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primarySwatch: Colors.blue),
      home: PrimeraPag(),
    );
  }
}

class PrimeraPag extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Mundo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Abrir Segunda Pantalla'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegudaPag()),
            );
          },
        ),
      ),
    );
  }
  }

  class SegudaPag extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Pantalla"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Abrir Hola Mundo'),
        ),
      ),
    );
  }
  }