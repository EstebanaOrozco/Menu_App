import 'package:carta_inicio/mesas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ubicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text('ubicacion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://cdn.getyourguide.com/img/location/5cced3e295e02.jpeg/99.jpg'),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => mesas()));
              },
              child: const Text('Medellín'),
            ),
            Image.network(
                'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/IWWI6YATYJBBPEX5TAR3XNSD3Y.jpeg'),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => mesas()));
              },
              child: const Text('Bogota'),
            ),
          ],
        ),
      ),
    );
  }
}
