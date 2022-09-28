import 'package:carta_inicio/PlatoFuerte.dart';
import 'package:carta_inicio/Bebidas.dart';
import 'package:carta_inicio/Entradas.dart';
import 'package:carta_inicio/Postres.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT84LewQLP0aS1BiUZkcm1TdwK92fg82u5bf2TXgofjiw&s'),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlatoFuerte()));
              },
              child: const Text('Plato fuerte'),
            ),
            Image.network(
                'https://thumbs.dreamstime.com/b/colecci%C3%B3n-de-zumos-frutas-fruta-bebida-bebidas-milkshake-botellas-aisladas-en-blanco-batido-un-fondo-202492000.jpg'),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bebidas()));
              },
              child: const Text('Bebidas'),
            ),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Mh-Grv_CGaBmWNUT-yVJzVQ-9gArCtuT8w2z9MfwqcYx4CILWKVHplgXPMGb7gpuCLE&usqp=CAU'),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Postres()));
              },
              child: const Text('Postres'),
            ),
            Image.network(
                'https://st2.depositphotos.com/1040166/5971/i/450/depositphotos_59713675-stock-photo-food-background.jpg'),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Entradas()));
              },
              child: const Text('entradas'),
            ),
          ],
        ),
      ),
    );
  }
}
