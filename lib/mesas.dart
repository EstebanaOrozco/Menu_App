import 'package:carta_inicio/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mesas extends StatefulWidget {
  const mesas({super.key});

  @override
  State<mesas> createState() => _mesas();
}

class _mesas extends State<mesas> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text('mesas'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Escoja la mesa')),
            ],
            rows: List<DataRow>.generate(
              numItems,
              (int index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.08);
                  }
                  if (index.isEven) {
                    return Colors.grey.withOpacity(0.3);
                  }
                  return null;
                }),
                cells: <DataCell>[DataCell(Text('Mesa $index'))],
                selected: selected[index],
                onSelectChanged: (bool? value) {
                  //preguntar como organizar el set state, no me deja ponerle el state
                  // en el extend se supone que deberia ir "extends State<>"
                  setState(() {
                    selected[index] = value!;
                  });
                },
              ),
            ),
          ),
          ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => menu()));
              },
              child: const Text('ver menu'))
        ],
      )),
    );
  }
}
