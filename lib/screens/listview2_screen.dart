import 'package:fl_componentes/screens/screens.dart';
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
                      case 'Targarian' : Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TargarianScreen()),); 
                      break;
                      case 'Stark' : Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const StarkScreen()),); 
                      break;
                      case 'Lanister' : Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LanisterScreen()),); 
                      break;
                      case 'Baratheon' : Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BaratheonScreen()),); 
                      break;
                    }
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
