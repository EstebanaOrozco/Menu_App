import 'package:carta_inicio/registrar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diamante Azteca',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Diamante Azteca'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://64.media.tumblr.com/691f6583d54417627340987fe7ce0b59/tumblr_inline_nrhgjwxYHU1sminkw_1280.jpg'),
            const Text(
              'Bienvenido!',
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                // nos vamos a la vista registrar el cliente
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => registrar()));
              },
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
