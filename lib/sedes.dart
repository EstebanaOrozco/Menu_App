import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sedes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sedes'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('confimar'),
          onPressed: () {},
        ),
      ),
    );
  }
}
