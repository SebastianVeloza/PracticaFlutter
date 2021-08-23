/*Aplicacion para pasar de dos paginas con boton para cambiar entre ellas y consumo de API Themoviedb.com
Hecho por:Sebastian Veloza*/ 
import 'package:flutter/material.dart';
import 'package:flutter_1/ui/cajapelicula.dart';
import 'package:flutter_1/ui/spinnerwidget.dart';
import 'api/themoviedbservice.dart';

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
          child: Text('Ver lista de peliculas'),
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
        title: Text('Peliculas')
      ),
      body: FutureBuilder (
        //podría poner
        //initialData: [],
        future: TheMovieDBService.traerPeliculas(),
        builder:
          (BuildContext context,
           AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, 
              index) {
                var pelicula = snapshot.data![index];
                return CajaPelicula(peli: pelicula);
              },
            );
          } else {
            return SpinnerWidget();
          }

          },
      )
    );
  }
}