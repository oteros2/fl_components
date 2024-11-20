import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targarian', 'Stark', 'Lanister', 'Baratheon'];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
          //backgroundColor: Colors.amber,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  trailing: const Icon(Icons.adb_rounded),
                  title: Text(options[index]),
                  onTap: () {
                    final casa = options[index];
                    switch (casa){
                      case 'Targarian' : print(casa); break;
                      case 'Stark' : print (casa); break;
                      case 'Lanister' : print (casa); break;
                      case 'Baratheon' :print (casa); break;
                    }
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
