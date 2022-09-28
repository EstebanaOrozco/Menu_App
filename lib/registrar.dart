import 'package:carta_inicio/ubicacion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class registrar extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  //String nameValue;
  //String phoneValue;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text('registro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Nombre"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Telefono"),
              ),
              ElevatedButton(
                style: style,
                onPressed: () {
                  // luego deregistrar envia a seleccionar cuidad
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ubicacion()));
                },
                child: const Text('Elegir cuidad'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
